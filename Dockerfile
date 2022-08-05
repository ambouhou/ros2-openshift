FROM ros:foxy

# install ros package
RUN sudo apt-get install python3-catkin-pkg-modules python3-rospkg-modules && mkdir /home/ros

COPY test.py /home/ros/

CMD ["/bin/bash", "-c", "source /opt/ros/foxy/setup.bash && python3 /home/ros/test.py"]