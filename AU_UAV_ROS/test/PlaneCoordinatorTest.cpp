#include "AU_UAV_ROS/PlaneCoordinator.h"
#include "AU_UAV_ROS/standardDefs.h"
#include <gtest/gtest.h>
  
TEST(PlaneCoordinatorTests, planeCoordinatorTest){
  
  struct AU_UAV_ROS::waypoint wp;
  wp.latitude = 35.235253;
  wp.longitude = -85.232323;
  wp.altitude = 100.00;
  bool isAvoidance = false;
  bool isNew = true;
  AU_UAV_ROS::PlaneCoordinator pc;
  EXPECT_TRUE(pc.goToPoint(wp, isAvoidance, isNew)); 
}

 /* 
TEST(XBeeIOTests, basicOperations){
  EXPECT_EQ(5, meval::EvaluateMathExpression("2+3"));
  EXPECT_EQ(5, meval::EvaluateMathExpression("2 + 3"));
  EXPECT_EQ(10, meval::EvaluateMathExpression("20/2"));
  EXPECT_EQ(-4, meval::EvaluateMathExpression("6 - 10"));
  EXPECT_EQ(24, meval::EvaluateMathExpression("6 * 4"));
}
  
TEST(XBeeIOTests, complexOperations){
  TEST_EXPRESSION(((3 + 4) / 2.0) + 10);
  TEST_EXPRESSION(7 * (1 + 2 + 3 - 2 + 3.4) / 12.7);
  TEST_EXPRESSION((1 + 2 + 3) - (8.0 / 10)); 
}
 
TEST(XBeeIOTests, UnaryMinus){
  TEST_EXPRESSION(-5);
}
 
TEST(XBeeIOTests, badInput){
   //TODO - figure out what good error behavior is and test for it properly
   //EXPECT_EQ(0, meval::EvaluateMathExpression("4.1.3 - 4.1"));
   //EXPECT_EQ(0, meval::EvaluateMathExpression("4.1.3"));
}
   
TEST(XBeeIOTests, basicOperations){
  EXPECT_EQ(math_utils::clamp<int>(-10, 10, 20), 10);
  EXPECT_EQ(math_utils::clamp<int>(15, 10, 20), 15);
  EXPECT_EQ(math_utils::clamp<int>(25, 10, 20), 20);
}
 */
int main(int argc, char **argv){
  testing::InitGoogleTest(&argc, argv);
  return RUN_ALL_TESTS();
}


