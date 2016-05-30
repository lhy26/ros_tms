roscore
rosparam set /is_real true
roslaunch tms_db_manager tms_db_manager.launch
rosrun tms_ss_vicon vicon_stream
roslaunch rostms_bringup rostms.launch
roslaunch tms_rp_voronoi_map voronoi.launch --screen
roslaunch tms_ts_ts task_scheduler.launch --screen

roslaunch tms_rc_mimamorukun_control minimal.launch
roslaunch tms_rc_mimamorukun_control joyop_joystick.launch
rosrun tms_rc_mimamorukun_control gui_movement.py
rosrun tms_rc_mimamorukun_control voronoi_follower.py
