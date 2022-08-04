FROM ros:humble

# install ros package
RUN apt-get update && mkdir /ros2_home

WORKDIR /ros2_home

# launch ros package
CMD ["ros2", "launch", "demo_nodes_cpp", "talker_listener.launch.py"]