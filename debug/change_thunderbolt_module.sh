#!/bin/bash

cd /path/to/kernel/source/drivers/thunderbolt
make -C /path/to/kernel/source M=$(pwd) modules
sudo make -C /path/to/kernel/source M=$(pwd) modules_install
sudo rmmod thunderbolt_net
sudo rmmod thunderbolt

sudo modprobe thunderbolt
sudo modprobe thunderbolt_net
