# Experimental Robotics - Assignment 1
This repository was created for the course Experimental Robotics Lab at University of Genoa, Italy.

# Description
A `turtlesim_node` is published for simulating a robot that has 3 behaviours. These behaviours depend on `energy` variable which is generated randomly at the beginning of every loop.
 * **Normal** behaviour occurs when `energy >= 4`. At this status, node moves random point and stay there about random amount of time.
 * **Sleep** behaviour occurs when `energy < 4`. At this status, node moves to specific point (home location) and stay there about random amount of time.
 * **Play** behaviour occurs when `rosservice call /play [argument]` comment entered prompt by user. At this status, first, node moves to a specific point(user location), then moves to a specific point (play_x, play_y,) which is entered by the user.
 
# Setup
* Clone this repository in to your device.
```
$  git clone https://github.com/edoruk/Experimental-Robotics-Assignment1.git
```
* Copy your file path and add source path to your .bashrc file. Before that, you need to be a superuser, * if you are not *.
```
$ sudo -i
your password
$ gedit .bashrc
```
add `source ~/exp_ws/devel/setup.bash` at the bottom of your .bashrc file.
* After that go to your exp_ws folder and build it.
```
$ cd ~/exp_ws
$ catkin_make
```
# Running code
* Start your terminal from applications or `CTRL+Alt+T`. After that run every comment on different terminal except first 2.
```
$ roscore &
$ rosrun turtlesim turtlesim_node
$ rosrun main_package main
$ rosservice call /play "play_pose_x: 3.0 play_pose_y: 4.5"
```
After last comment, `turtlesim_node` moves to (3,4.5) point which can be change.

# Function Explanation
*`void tour(turtlesim::Pose goal_pose);`
For moving node randomly on 2D map on normal behaviour.
`bool checkWall(turtlesim::Pose goal_pose);`
For hecking if next point is inside of the map.
`void move(double speed, double distance, bool isForward);`
For checking next point if `isForward` and move node at linear.x  direction.
`void rotate(double angular_speed, double angle, bool cloclwise);`
For checking and determining angular.z direction. 
`double degrees2radians(double angle_in_degrees);`
For calculating radian from degree.
`double setDesiredOrientation(double desired_angle_radians);`
For understanding desired orientation.
`void moveGoal(turtlesim::Pose goal_pose, double distance_tolerance);	//this will move robot to goal`
For moving `turtlesim_node` to specific location.
`double getDistance(double x1, double y1, double x2, double y2);`
For calculating distance between current and next location.
`void updatePose(const turtlesim::Pose::ConstPtr & pose_message);`
For calling when initializing subscriber.
`bool playCallBack(custom_messages::Play::Request& req, custom_messages::Play::Response& res);`
For calling when initializing `rosService server`.

## Custom_messages
Used for rosservice which has 2 float request and a response.
Locates in `~/exp_ws/src/custom_messages/srv` with name Play.srv.



