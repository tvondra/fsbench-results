#!/usr/bin/bash

DIR=$1

sudo dmesg > $DIR/dmesg.log
sudo dmidecode > $DIR/dmidecode.log
sudo lsblk > $DIR/lsblk.log
sudo lscpu > $DIR/lscpu.log
sudo lspci > $DIR/lspci.log
sudo lspci -v > $DIR/lspci-v.log
sudo nvme list > $DIR/nvme.log
sudo sysctl -a > $DIR/sysctl.log

for d in `ls /dev/ | grep 'nvme[0-9]$'`; do

	sudo smartctl -a /dev/$d > $DIR/$d.log;

done
