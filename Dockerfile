FROM ros:foxy

# install ros package
RUN apt-get update && apt-get install -y \
      ros-foxy-demo-nodes-cpp \
      ros-foxy-demo-nodes-cpp && \
    rm -rf /var/lib/apt/lists/* && mkdir /ros2_home

WORKDIR /ros2_home

# launch ros package
CMD ["ros2", "launch", "demo_nodes_cpp", "talker_listener.launch.py"]