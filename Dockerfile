FROM ros:foxy

# install ros package
RUN sudo apt-get install python-rospy && mkdir /home/ros

COPY test.py /home/ros/

CMD ["/bin/bash", "-c", "source /opt/ros/foxy/setup.bash && python3 /home/ros/test.py"]