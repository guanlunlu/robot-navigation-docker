FROM osrf/ros:noetic-desktop-full

RUN apt update && apt install -y \
    vim \
    git \
    ros-noetic-navigation \
    ros-noetic-map-server \
    ros-noetic-teb-local-planner

RUN echo "source /root/euro_ws/devel/setup.bash" >> ~/.bashrc
RUN echo "PS1=\"\[\033[1;32;1m\][\[\033[1;34;40m\]\u@\h:\[\033[0;36;40m\]\w\[\033[1;32;1m\]]\[\033[1;31;1m\]\$\[\033[1;36;1m\]\"" >> ~/.bashrc
CMD ["bin/bash"]