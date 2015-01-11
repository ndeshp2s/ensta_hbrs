#include <iostream>
 #include <ros/ros.h>
 #include <geometry_msgs/Twist.h>
 
 class RobotDriver
 {
 private:
   //! The node handle we'll be using
   ros::NodeHandle nh_;
   //! We will be publishing to the "cmd_vel" topic to issue commands
   ros::Publisher cmd_vel_pub_;
 
 public:
   //! ROS node initialization
   RobotDriver(ros::NodeHandle &nh)
   {
     nh_ = nh;
     //set up the publisher for the cmd_vel topic
     cmd_vel_pub_ = nh_.advertise<geometry_msgs::Twist>("p3dx/cmd_vel", 1);
   }
 
   //! Loop forever while sending drive commands based on keyboard input
   bool driveKeyboard()
   {
    std::cout << "Type a command and then press enter.  "
      "Use '+' to move forward, 'l' to turn left, "
      "'r' to turn right, 's' to stop, '.' to exit.\n";

    //we will be sending commands of type "twist"
    geometry_msgs::Twist base_cmd;

    char cmd[50];
    while(nh_.ok()){

      std::cin.getline(cmd, 50);
      if(cmd[0]!=119 && cmd[0]!=113 && cmd[0]!=115 && cmd[0]!=101 && cmd[0]!=120 && cmd[0]!='.')
      {
        std::cout << "unknown command:" << cmd << "\n";
        continue;
      }

      base_cmd.linear.x = base_cmd.linear.y = base_cmd.angular.z = 0.0;   
      //move forward
      if(cmd[0]==119){
        base_cmd.linear.x = 0.3;
	base_cmd.angular.z = 0.0;
      }
      //move backward
      else if(cmd[0]==115){
        base_cmd.linear.x = -0.3;
	base_cmd.angular.z = 0.0;
      }
      //turn left (yaw) and drive forward at the same time
      else if(cmd[0]==113){
        base_cmd.angular.z = 0.20;
        //base_cmd.linear.x = 0.20;
      } 
      //turn right (yaw) and drive forward at the same time
      else if(cmd[0]==101){
        base_cmd.angular.z = -0.20;
        //base_cmd.linear.x = 0.20;
      } 
      
      //quit
      else if(cmd[0]=='.'){
        break;
      }

      //pause
      else if(cmd[0]==120){
        base_cmd.angular.z = 0.0;
        base_cmd.linear.x = 0.0;
      }

      //stop
      else {
        base_cmd.angular.z = 0.0;
        base_cmd.linear.x = 0.0;
      }
      
      //publish the assembled command
      cmd_vel_pub_.publish(base_cmd);
    }
    return true;
  }

 };

 int main(int argc, char** argv)
 {
   //init the ROS node
   ros::init(argc, argv, "robot_driver"); 
   ros::NodeHandle nh; 
 
   RobotDriver driver(nh);
   driver.driveKeyboard();
 }
