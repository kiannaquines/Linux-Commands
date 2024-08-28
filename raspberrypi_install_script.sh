echo "Setting up necesary pakages"
sudo apt upgdate -y && sudo apt upgrade -y
sudo apt install -y raspberrypi-kernel-headers build-essential bc git

echo "Cloning the project"
git clone https://github.com/lwfinger/rtw88
cd rtw88

echo "Running make....."
sudo make

echo "Running make install"
sudo make install

echo "Setting up the wlan1 into monitor mode"
sudo ip link set wlan1 down
sudo iw dev wlan1 set type monitor
sudo ip link set wlan1 up
