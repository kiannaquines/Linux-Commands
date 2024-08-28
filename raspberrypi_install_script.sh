sudo apt upgdate -y && sudo apt upgrade -y
sudo apt install -y raspberrypi-kernel-headers build-essential bc git
git clone https://github.com/lwfinger/rtw88
cd rtw88
sudo make
sudo make install
