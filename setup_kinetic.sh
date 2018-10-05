mkdir -p ~/catkin_ws/src

sudo sh -c '. /etc/lsb-release && echo "deb http://mirrors.ustc.edu.cn/ros/ubuntu/ $DISTRIB_CODENAME main" > /etc/apt/sources.list.d/ros-latest.list'
sudo apt-key adv --keyserver hkp://ha.pool.sks-keyservers.net:80 --recv-key 421C365BD9FF1F717815A3895523BAEEB01FA116

sudo apt update -y

sudo apt install ros-kinetic-desktop-full -y

sudo rosdep init
rosdep update

echo "source /opt/ros/kinetic/setup.bash" >> ~/.bashrc
source ~/.bashrc

sudo apt-get install python-rosinstall python-rosinstall-generator python-wstool build-essential -y

cd ~/catkin_ws/
catkin_make

echo "source ~/catkin_ws/devel/setup.bash" >> ~/.bashrc
source ~/.bashrc

sudo apt install ros-kinetic-joy ros-kinetic-image-view -y

sudo sh -c 'echo "deb http://packages.osrfoundation.org/gazebo/ubuntu-stable `lsb_release -cs` main" > /etc/apt/sources.list.d/gazebo-stable.list'
wget http://packages.osrfoundation.org/gazebo.key -O - | sudo apt-key add -
sudo apt update

sudo apt install gazebo7 libgazebo7-dev -y
sudo apt install ros-kinetic-gazebo-ros-pkgs ros-kinetic-gazebo-ros-control -y

sudo apt update -y
sudo apt dist-upgrade -y
sudo apt upgrade -y

echo "export SVGA_VGPU10=0" >> ~/.bashrc

echo 'export ROS_MASTER_URI=http://192.168.120.130:11311' >> ~/.bashrc
echo 'export ROS_HOSTNAME=192.168.120.130' >> ~/.bashrc
echo 'export ROS_IP=192.168.120.130' >> ~/.bashrc

exit