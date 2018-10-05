sudo sh -c '. /etc/lsb-release && echo "deb http://mirrors.ustc.edu.cn/ros/ubuntu/ $DISTRIB_CODENAME main" > /etc/apt/sources.list.d/ros-latest.list'
sudo apt-key adv --keyserver hkp://ha.pool.sks-keyservers.net:80 --recv-key 421C365BD9FF1F717815A3895523BAEEB01FA116

sudo apt update -y

sudo apt install ros-melodic-desktop-full -y

sudo rosdep init
rosdep update

echo "source /opt/ros/melodic/setup.bash" >> ~/.bashrc
source ~/.bashrc

sudo apt-get install python-rosinstall python-rosinstall-generator python-wstool build-essential -y

sudo sh -c 'echo "deb http://packages.osrfoundation.org/gazebo/ubuntu-stable `lsb_release -cs` main" > /etc/apt/sources.list.d/gazebo-stable.list'
wget http://packages.osrfoundation.org/gazebo.key -O - | sudo apt-key add -
sudo apt update

sudo apt install gazebo9 libgazebo9-dev -y

sudo apt update -y
sudo apt dist-upgrade -y
sudo apt upgrade -y

echo "export SVGA_VGPU10=0" >> ~/.bashrc

echo 'export ROS_MASTER_URI=http://192.168.120.130:11311' >> ~/.bashrc
echo 'export ROS_HOSTNAME=192.168.120.130' >> ~/.bashrc
echo 'export ROS_IP=192.168.120.130' >> ~/.bashrc