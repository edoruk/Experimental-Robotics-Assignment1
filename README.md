# Experimental Robotics - Assignment 1
This repository was created for the course Experimental Robotics Lab at University of Genoa, Italy.

# Description
A `turtlesim_node` is published for simulating a robot that has 3 behaviours. These behaviours depend on `energy` variable which is generated randomly at the beginning of every loop.
 * **Normal** behaviour occurs when `energy >= 4`. At this status, node moves random point and stay there about random amount of time.
 * **Sleep** behaviour occurs when `energy < 4`. At this status, node moves to specific point (home location) and stay there about random amount of time.
 * **Play** behaviour occurs when `rosservice call /play [argument]` comment entered prompt by user. At this status, first, node moves to a specific point(user location), then moves to a specific point (play_x, play_y,) which is entered by the user.
 
# Setup
* Clone this repository on to your device.
```
$ git clone 
$
$
$
```
