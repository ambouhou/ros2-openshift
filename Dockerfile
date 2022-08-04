FROM ros:humble-ros-core

# install ros package
RUN apt-get update && apt-get install -y \
      ros-humble-demo-nodes-cpp \
      ros-humble-demo-nodes-py && \
    rm -rf /var/lib/apt/lists/* && mkdir /ros2_home

WORKDIR /ros2_home

# launch ros package
CMD ["ros2", "launch", "demo_nodes_cpp", "talker_listener.launch.py"]