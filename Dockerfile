FROM ros:foxy

# install ros package
RUN apt-get update && apt-get install -y \
      ros-${ROS_DISTRO}-demo-nodes-py && \
    rm -rf /var/lib/apt/lists/* && mkdir /ros2_home

WORKDIR /ros2_home

# launch ros package
CMD ["ros2", "launch", "talker_listener.launch.py"]