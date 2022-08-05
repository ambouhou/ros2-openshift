FROM osrf/ros:foxy-desktop

COPY test.py /home/ros/

CMD /bin/bash -c source /opt/ros/foxy/setup.bash 

CMD python3 /home/ros/test.py

CMD ros2 pkg executables