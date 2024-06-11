#!/usr/bin/env bash

if [ $# -ne 1 ]
then
    echo "Provide only one argument, the network interface (can be found with ip a or ifconfig -a)"
else
    sudo ip link set $1 down && sudo macchanger -e -r $1 && sudo ip link set $1 up
fi
