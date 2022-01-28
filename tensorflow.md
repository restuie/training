# 安裝顯示卡驅動

sudo add-apt-repository ppa:graphics-drivers/ppa

sudo apt update

ubuntu-drivers devices

sudo ubuntu-drivers autoinstall

sudo reboot now

nvidia-smi

# 安裝cuda

sudo apt install freeglut3-dev build-essential libx11-dev libxmu-dev libxi-dev libgl1-mesa-glx libglu1-mesa libglu1-mesa-dev

sudo chmod 777 cuda_10.0.130_410.48_linux.run

sudo ./cuda_10.0.130_410.48_linux.run -toolkit -samples -silent -override
