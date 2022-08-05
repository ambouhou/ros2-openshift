FROM ros:foxy

/bin/sh -c apt-get update && apt-get install --no-install-recommends -y     build-essential     git     python3-colcon-common-extensions     python3-colcon-mixin     python3-rosdep     python3-vcstool     && rm -rf /var/lib/apt/lists/*

/bin/sh -c rosdep init &&   rosdep update --rosdistro $ROS_DISTRO

/bin/sh -c colcon mixin add default       https://raw.githubusercontent.com/colcon/colcon-mixin-repository/master/index.yaml &&     colcon mixin update &&     colcon metadata add default       https://raw.githubusercontent.com/colcon/colcon-metadata-repository/master/index.yaml &&     colcon metadata update

/bin/sh -c apt-get update && apt-get install -y --no-install-recommends     ros-foxy-ros-base=0.9.2-1*     && rm -rf /var/lib/apt/lists/*

RUN /bin/sh -c apt-get update && apt-get install -y --no-install-recommends     ros-foxy-desktop=0.9.2-1*     && rm -rf /var/lib/apt/lists/* # buildkit

CMD ['ros2 run demo_nodes_cpp listener & ros2 run demo_nodes_cpp talker ']