FROM ros:foxy

CMD /bin/sh -c apt-get update && apt-get install --no-install-recommends -y     build-essential     git     python3-colcon-common-extensions     python3-colcon-mixin     python3-rosdep     python3-vcstool     && rm -rf /var/lib/apt/lists/*

CMD /bin/sh -c rosdep init &&   rosdep update --rosdistro $ROS_DISTRO

CMD /bin/sh -c colcon mixin add default       https://raw.githubusercontent.com/colcon/colcon-mixin-repository/master/index.yaml &&     colcon mixin update &&     colcon metadata add default       https://raw.githubusercontent.com/colcon/colcon-metadata-repository/master/index.yaml &&     colcon metadata update

CMD /bin/sh -c apt-get update && apt-get install -y --no-install-recommends     ros-foxy-ros-base=0.9.2-1*     && rm -rf /var/lib/apt/lists/*

COPY test.py /home/ros/

CMD /bin/bash -c source /opt/ros/foxy/setup.bash 

CMD python3 /home/ros/test.py

CMD ros2 run demo_nodes_cpp listener