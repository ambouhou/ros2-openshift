FROM ros:foxy

# install ros package
RUN apt update 

WORKDIR /ros2_home

# launch ros package
CMD ["ros2", "launch", "demo_nodes_cpp", "talker_listener.launch.py"]