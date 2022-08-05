FROM ros:foxy

# install ros package
RUN apt-get update && mkdir /home/ros

COPY test.py /home/ros/
