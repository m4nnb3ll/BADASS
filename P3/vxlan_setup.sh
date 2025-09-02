# /root/vxlan_setup.sh: Configure Vxlan

#! /bin/bash
ip link add name br0 type bridge
ip link add vxlan10 type vxlan id 10 dstport 4789

ip link set br0 up
ip link set vxlan10 up

ip link set vxlan10 master br0
ip link set eth0 master br0
