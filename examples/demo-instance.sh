#!/bin/bash
# Launch demo instance in MicroStack
set -e

openstack network create demo-net
openstack subnet create --network demo-net --subnet-range 10.20.20.0/24 demo-subnet
openstack flavor create --ram 1024 --vcpus 1 --disk 10 m1.demo
openstack image create --file /tmp/ubuntu.img --disk-format qcow2 --container-format bare ubuntu-demo
openstack server create --flavor m1.demo --image ubuntu-demo --network demo-net demo-vm
