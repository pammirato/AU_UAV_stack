/***************************************************
 Coder: Jacob Dalton Conaway - jdc0019@auburn.edu
 Reviewer/Tester: Kayla Casteel - klc0025@auburn.edu
 Senior Design - Spring 2013
 Sources are in-line
 ***************************************************/

#ifndef MAINWINDOW_H
#define MAINWINDOW_H

#include <QMainWindow>
#include "qnode.hpp"

class FlightVisualization;
//Not sure what this does
class MissionPlanner;

namespace Ui
{
class MainWindow;
}

class MainWindow: public QMainWindow
{
    Q_OBJECT

//qnode must be before the constructor
private:
    QNode qnode;

public:
    MainWindow(int argc, char** argv, QWidget *parent = 0);
    ~MainWindow();

protected:
    void closeEvent(QCloseEvent *event);

private:
    Ui::MainWindow *ui;
    FlightVisualization* flightViz;
    MissionPlanner* plannerApp;
private slots:
    void showAboutDialog();
    void disableLoadMission();
};

#endif // MAINWINDOW_H
