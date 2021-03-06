/***************************************************
 Coder: Jacob Dalton Conaway - jdc0019@auburn.edu
 Reviewer/Tester: Kayla Casteel - klc0025@auburn.edu
 Senior Design - Spring 2013
 Sources are in-line
 TODO: Finish Commenting and Proofread Comments
 ***************************************************/

#include "AU_UAV_GUI/flightvisualization.hpp"
#include "AU_UAV_GUI/constants.h"
#include "../build/ui_flightvisualization.h"
#include <QDebug>
#include <QWebFrame>
#include <QWebElement>
#include <QMessageBox>
#include <QChar>
#include <QStandardItem>
#include <QStandardItemModel>
#include <math.h>
#include <stdio.h>
#include <QListWidgetItem>

FlightVisualization::FlightVisualization(QWidget * parent) :
    QWidget(parent), ui(new Ui::Form)
{
    ui->setupUi(this);
    popupPlaneSelector = new QListWidget();
    popupPlaneSelector->setWindowTitle(POPUP_SELECTOR_TITLE);
    QListWidgetItem * item = new QListWidgetItem(ALL_PLANES_LABEL,
            popupPlaneSelector);

    item->setCheckState(Qt::Checked);
    popupPlaneSelector->addItem(item);

    connect(ui -> flightPathCheckBox, SIGNAL(stateChanged(int)), this, SLOT(toggleFlightPath(int)));
    connect(ui -> wayPointCheckBox, SIGNAL(stateChanged(int)), this, SLOT(toggleWayPoints(int)));
    connect(ui -> webView, SIGNAL(loadFinished(bool)), this, SLOT(loadFinished(bool)));
    connect(ui -> autoCenterCheckBox, SIGNAL(stateChanged(int)), this, SLOT(toggleAutoCenter(int)));
    connect(ui -> autoFitCheckBox, SIGNAL(stateChanged(int)), this, SLOT(toggleAutoFit(int)));
    connect(ui->resetFlightPathButton, SIGNAL(clicked()), this,
            SLOT(resetFlightPaths()));
    connect(ui -> planeSelectorComboBox, SIGNAL(currentIndexChanged(int)), this, SLOT(setCurrentPlane(int)));
    connect(ui->selectPlaneButton, SIGNAL(clicked()), this,
            SLOT(showPlaneSelector()));
    connect(popupPlaneSelector, SIGNAL(itemClicked(QListWidgetItem*)), SLOT(togglePlaneVisibility(QListWidgetItem*)));
    QWebSettings::globalSettings()->setAttribute(QWebSettings::PluginsEnabled,
            true);
    ui->webView->setUrl(VIZ_MAP_URL);

    // http://stackoverflow.com/questions/12523753/sleep-inside-a-loop-that-uses-paintevent-in-qt-c
    connect(&_timer, SIGNAL(timeout()), this, SLOT(adjustMapCenter()));

    _timer.start(AUTO_CENTER_DURATION);

    //initialize everything in the active planes to the defaults. There is probably a better/more efficienct way to initialize the struct, but I was short on time.
    for (int i = 0; i < TOTAL_NUM_OF_PLANES; i++) {
        activePlanes[i].planeActive = false;
        activePlanes[i].latitude = 0;
        activePlanes[i].longitude = 0;
    }

    firstMessage = true;
    autoFitMap = false;
    currentPlane = INVALID_PLANE_ID;

    // prevent "select a plane" from being selectable
    QStandardItemModel * model = qobject_cast<QStandardItemModel *>(
                                     ui->planeSelectorComboBox->model());
    QModelIndex firstIndex = model->index(0,
                                          ui->planeSelectorComboBox->modelColumn(),
                                          ui->planeSelectorComboBox->rootModelIndex());
    QStandardItem * firstItem = model->itemFromIndex(firstIndex);
    firstItem->setEnabled(false);
}

FlightVisualization::~FlightVisualization()
{
    delete ui;
    delete popupPlaneSelector;
}

void FlightVisualization::closePopupWindows()
{
    popupPlaneSelector->close();
}

void FlightVisualization::toggleAutoCenter(int state)
{
    if (state > 0) {
        adjustMapCenter();

        // what if timer is already running? It can't be already running unless this function is called explicitly
        _timer.start(AUTO_CENTER_DURATION);
        ui->autoFitCheckBox->setCheckable(true);
        ui->autoFitCheckBox->setEnabled(true);
        ui->autoFitCheckBox->setChecked(ui->autoFitCheckBox->isChecked());
    } else {
        _timer.stop();
        ui->autoFitCheckBox->setCheckable(false);
        ui->autoFitCheckBox->setEnabled(false);

        autoFitMap = false;
    }
}

void FlightVisualization::setCurrentPlane(int comboIndex)
{
    if (comboIndexToPlaneIDMap.contains(comboIndex)) {
        currentPlane = comboIndexToPlaneIDMap.value(comboIndex);

        resetPlaneInfo();
    }
}

void FlightVisualization::showPlaneSelector()
{
    popupPlaneSelector->setVisible(true);
}

void FlightVisualization::togglePlaneVisibility(QListWidgetItem * item)
{
    if (item->text().startsWith(ALL_PLANES_LABEL)) {
        for (int index = 0; index < popupPlaneSelector->count(); index++) {
            QListWidgetItem * newItem = popupPlaneSelector->item(index);
            newItem->setCheckState(item->checkState());
            int planeIndex = newItem->text().remove(DISP_PLANE_PREFIX).toInt();
            QString visible = "false";

            if (newItem->checkState() > 0) {
                visible = "true";
            }

            QString function = QString("togglePlaneVisibility(%1, %2)").arg(
                                   planeIndex).arg(visible);

            ui->webView->page()->currentFrame()->documentElement().evaluateJavaScript(
                function);
        }
    } else {
        int planeIndex = item->text().remove(DISP_PLANE_PREFIX).toInt();
        QString visible = "false";

        if (item->checkState() > 0) {
            visible = "true";
        }

        QString function = QString("togglePlaneVisibility(%1, %2)").arg(
                               planeIndex).arg(visible);

        ui->webView->page()->currentFrame()->documentElement().evaluateJavaScript(
            function);
    }
}

void FlightVisualization::toggleAutoFit(int state)
{
    if (state > 0) {
        autoFitMap = true;
    } else {
        autoFitMap = false;
    }
}

void FlightVisualization::setMapCenter(double latitude, double longitude)
{
    QString str = QString("setMapCenter(%1, %2);").arg(latitude,
                  LAT_LONG_FIELD_WIDTH, FLOAT_FORMATTER, LAT_LONG_NUM_OF_DIGITS).arg(
                      longitude, LAT_LONG_FIELD_WIDTH, FLOAT_FORMATTER,
                      LAT_LONG_NUM_OF_DIGITS);

    ui->webView->page()->currentFrame()->documentElement().evaluateJavaScript(
        str);
}

void FlightVisualization::adjustMapCenter()
{
    if (firstMessage) {
        return;
    }
    QString clearString = "clearBounds();";
    ui->webView->page()->currentFrame()->documentElement().evaluateJavaScript(
        clearString);

    for (int i = 0; i < TOTAL_NUM_OF_PLANES; i++) {
        if (activePlanes[i].planeActive) {
            QString str2 = QString("extendBounds(%1, %2);").arg(
                               activePlanes[i].latitude, LAT_LONG_FIELD_WIDTH,
                               FLOAT_FORMATTER, LAT_LONG_NUM_OF_DIGITS).arg(
                               activePlanes[i].longitude, LAT_LONG_FIELD_WIDTH,
                               FLOAT_FORMATTER, LAT_LONG_NUM_OF_DIGITS);

            ui->webView->page()->currentFrame()->documentElement().evaluateJavaScript(
                str2);
        }
    }

    QString str3;

    if (autoFitMap) {
        str3 = QString("fitToBounds();");
    } else {
        str3 = QString("panToBoundsCenter();");
    }

    ui->webView->page()->currentFrame()->documentElement().evaluateJavaScript(
        str3);
}

void FlightVisualization::updateMarker(double latitude, double longitude,
                                       double bearing, int planeID)
{
    int direction = int(bearing);

    // http://stackoverflow.com/questions/1531695/round-to-nearest-five-c-sharp
    direction = round(direction / (double) DIRECTION_MULTIPLE)
                * DIRECTION_MULTIPLE;

    if (bearing < 0) {
        direction += MAX_DIRECTION;
    }

    activePlanes[planeID].planeActive = true;
    activePlanes[planeID].latitude = latitude;
    activePlanes[planeID].longitude = longitude;

    QString planeLabel = QString(DISP_PLANE_PREFIX + "%1").arg(planeID);
    QString planeLabelNoDisplay = QString(PLANE_NUM_PREFIX + "%1").arg(planeID);

    // http://www.qtforum.org/article/13839/combobox-items.html

    //for plane selector
    QList<QListWidgetItem *> results = popupPlaneSelector->findItems(planeLabel,
                                       Qt::MatchExactly);
    //http://www.java2s.com/Code/Cpp/Qt/Drawsafilledincircle.htm
    if (results.size() <= 0) {
        QPixmap pixmap(ICON_PIXMAP_SIZE, ICON_PIXMAP_SIZE);
        pixmap.fill(Qt::transparent);

        QPainter painter(&pixmap);
        painter.setRenderHint(QPainter::Antialiasing, true);
        QPen pen(Qt::black, ICON_CIRCLE_LINE_WIDTH);
        painter.setPen(pen);
        QBrush brush(QColor (COLORS[planeID]));
        painter.setBrush(brush);
        painter.drawEllipse(CIRCLE_X_COORD, CIRCLE_Y_COORD, CIRCLE_WIDTH,
                            CIRCLE_HEIGHT);

        QIcon itemIcon(pixmap);
        QListWidgetItem * item = new QListWidgetItem(itemIcon, planeLabel,
                popupPlaneSelector);

        item->setCheckState(Qt::Checked);
        popupPlaneSelector->addItem(item);
    }
    //for plane info
    if (ui->planeSelectorComboBox->findText(planeLabelNoDisplay) == NOT_FOUND) {
        ui->planeSelectorComboBox->addItem(planeLabelNoDisplay);

        comboIndexToPlaneIDMap[ui->planeSelectorComboBox->findText(
                                   planeLabelNoDisplay)] = planeID;
    }

    QString str = QString("updateMarker(%1, %2, %3, %4);").arg(planeID).arg(
                      latitude, LAT_LONG_FIELD_WIDTH, FLOAT_FORMATTER,
                      LAT_LONG_NUM_OF_DIGITS).arg(longitude, LAT_LONG_FIELD_WIDTH,
                              FLOAT_FORMATTER, LAT_LONG_NUM_OF_DIGITS).arg(
                      int(direction) / DIRECTION_MULTIPLE);

    ui->webView->page()->currentFrame()->documentElement().evaluateJavaScript(
        str);
}

void FlightVisualization::updatePlaneInfo(int planeID, double currentLatitude,
        double currentLongitude, double currentAltitude, double groundSpeed,
        double targetBearing, int currentWaypointIndex,
        double distanceToDestination)
{
    if (planeID == currentPlane) {
        // http://stackoverflow.com/questions/10299996/qstringtodouble-giving-me-double-with-wrong-precision
        // http://www.qtcentre.org/archive/index.php/t-21765.html
        QString latitudeText = QString("%1").arg(currentLatitude,
                               LAT_LONG_FIELD_WIDTH, FLOAT_FORMATTER, LAT_LONG_NUM_OF_DIGITS);
        ui->latitudeValue->display(latitudeText);

        QString longitudeText = QString("%1").arg(currentLongitude,
                                LAT_LONG_FIELD_WIDTH, FLOAT_FORMATTER, LAT_LONG_NUM_OF_DIGITS);
        ui->longitudeValue->display(longitudeText);

        QString altitudeText = QString("%1").arg(currentAltitude,
                               OTHER_DATA_FIELD_WIDTH, FLOAT_FORMATTER,
                               OTHER_DATA_NUM_OF_DIGITS);
        ui->altitudeValue->display(altitudeText);
        QString groundSpeedText = QString("%1").arg(groundSpeed,
                                  OTHER_DATA_FIELD_WIDTH, FLOAT_FORMATTER,
                                  OTHER_DATA_NUM_OF_DIGITS);
        ui->groundSpeedValue->display(groundSpeedText);

        QString bearingText = QString("%1").arg(targetBearing,
                                                OTHER_DATA_FIELD_WIDTH, FLOAT_FORMATTER,
                                                OTHER_DATA_NUM_OF_DIGITS);
        ui->bearingValue->display(bearingText);

        double direction = targetBearing;
        if (targetBearing < 0) {
            direction += MAX_DIRECTION;
        }
        ui->directionLabel->setText(directionFromDegrees(direction));

        QString wayPointIndexText = QString("%1").arg(currentWaypointIndex);
        ui->wayPointIndexValue->display(wayPointIndexText);

        QString distToDestText = QString("%1").arg(distanceToDestination,
                                 OTHER_DATA_FIELD_WIDTH, FLOAT_FORMATTER,
                                 OTHER_DATA_NUM_OF_DIGITS);
        ui->distToDestValue->display(distToDestText);
    }
}

void FlightVisualization::resetPlaneInfo()
{
    ui->latitudeValue->display(DEFAULT_NUM_VAL);
    ui->longitudeValue->display(DEFAULT_NUM_VAL);
    ui->altitudeValue->display(DEFAULT_NUM_VAL);
    ui->groundSpeedValue->display(DEFAULT_NUM_VAL);
    ui->bearingValue->display(DEFAULT_NUM_VAL);
    ui->directionLabel->setText(DEFAULT_DIRECTION);
    ui->wayPointIndexValue->display(DEFAULT_NUM_VAL);
    ui->distToDestValue->display(DEFAULT_NUM_VAL);
}

// http://stackoverflow.com/questions/13220367/cardinal-wind-direction-from-degrees
QString FlightVisualization::directionFromDegrees(float degrees)
{

    int i = (degrees + DEGREE_SHIFT) / DEGREES_PER_DIRECTION;
    return DIRECTIONS[i % TOTAL_NUM_OF_DIRECTIONS];
}

void FlightVisualization::updateFlightPath(double latitude, double longitude,
        int planeID)
{
    QString str = QString("updateFlightPath(%1, %2, %3);").arg(planeID).arg(
                      latitude, LAT_LONG_FIELD_WIDTH, FLOAT_FORMATTER,
                      LAT_LONG_NUM_OF_DIGITS).arg(longitude, LAT_LONG_FIELD_WIDTH,
                              FLOAT_FORMATTER, LAT_LONG_NUM_OF_DIGITS);

    ui->webView->page()->currentFrame()->documentElement().evaluateJavaScript(
        str);
}

// needed to set the center of the map initially
void FlightVisualization::loadFinished(bool okay)
{
    firstMessage = true;
}

void FlightVisualization::toggleFlightPath(int state)
{
    QString str;

    if (state > 0) {
        str = QString("toggleFlightPath(true)");
        ui->resetFlightPathButton->setEnabled(true);
    } else {
        str = QString("toggleFlightPath(false)");
        ui->resetFlightPathButton->setEnabled(false);
    }

    ui->webView->page()->currentFrame()->documentElement().evaluateJavaScript(
        str);
}

void FlightVisualization::resetFlightPaths()
{
    QString str = QString("resetFlightPaths()");
    ui->webView->page()->currentFrame()->documentElement().evaluateJavaScript(
        str);
}

void FlightVisualization::toggleWayPoints(int state)
{
    QString str;

    if (state > 0) {
        str = QString("toggleWayPoints(true)");
    } else {
        str = QString("toggleWayPoints(false)");
    }

    ui->webView->page()->currentFrame()->documentElement().evaluateJavaScript(
        str);
}

void FlightVisualization::updateCoordinates(double latitude, double longitude,
        double bearing, int planeID)
{
    if (firstMessage) {
        setMapCenter(latitude, longitude);

        firstMessage = false;
    }

    updateMarker(latitude, longitude, bearing, planeID);
    updateFlightPath(latitude, longitude, planeID);
}

void FlightVisualization::updateWayPoint(double wp_Latitude,
        double wp_Longitude, int planeID)
{
    setWayPoint(wp_Latitude, wp_Longitude, planeID);
}

void FlightVisualization::setWayPoint(double wp_Latitude, double wp_Longitude,
                                      int planeID)
{
    if (ui->wayPointCheckBox->isChecked()) {
        // TODO: Performance wise - do an equality check first
        QString str = QString("setWayPoint(%1, %2, %3);").arg(planeID).arg(
                          wp_Latitude, LAT_LONG_FIELD_WIDTH, FLOAT_FORMATTER,
                          LAT_LONG_NUM_OF_DIGITS).arg(wp_Longitude, LAT_LONG_FIELD_WIDTH,
                                  FLOAT_FORMATTER, LAT_LONG_NUM_OF_DIGITS);

        ui->webView->page()->currentFrame()->documentElement().evaluateJavaScript(
            str);
    }
}
