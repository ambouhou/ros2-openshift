FROM osrf/ros:foxy-desktop

CMD /bin/bash -c source /opt/ros/foxy/setup.bash 

CMD ros2 run demo_nodes_cpp talker