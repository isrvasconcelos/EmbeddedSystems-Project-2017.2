#################################################
# Overview
This project is based on bbc_microbit microcontroller and brings funcionalities using its built-in resources, described below:

    - Display: Scroll a text on LED Matrix display.
    - Accelerometer: Move a single point on LED Matrix based on the readings from accelerometer.
    - Compass: Draw a single point which always points to the north.
    - Temperature: Show the temperature on LED Matrix in degree Celsius.
    - Bluetooth: Transmit data through a simple bluetooth application.

#################################################
# Zephyr install on ubuntu 14.04 guide is quickly described below 
# On home folder, open shell and type:

	wget https://github.com/zephyrproject-rtos/meta-zephyr-sdk/releases/download/0.9.2/zephyr-sdk-0.9.2-setup.run

	sudo sh zephyr-sdk-0.9.2-setup.run

	git clone https://github.com/zephyrproject-rtos/zephyr.git

	sudo apt-get install --no-install-recommends git cmake ninja-build gperf ccache doxygen dfu-util device-tree-compiler python3-ply python3-pip python3-setuptools python3-wheel xz-utils file make gcc-multilib autoconf automake libtool python-pip

	pip install --pre -U pyocd
	pip3 install --pre -U pyocd

#################################################
# On home/zephyr folder
	pip3 install --user -r scripts/requirements.txt
	pip install --user -r scripts/requirements.txt

#################################################
# CMake latest version on: https://cmake.org/download/
# Extract in home folder
	cmake .
	make -j4
	sudo make install

#################################################
# Set environment variables at .bashrc (sudo gedit .bashrc on home folder)
	export ZEPHYR_TOOLCHAIN_VARIANT=zephyr
	export ZEPHYR_SDK_INSTALL_DIR=/opt/zephyr-sdk/ #default
	source /home/<username>/zephyr/zephyr-env.sh
