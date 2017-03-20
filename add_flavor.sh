#!/bin/bash

. ~/open.rc

openstack flavor create --public  --id  3 --ram 512 --disk 10 --vcpus 1 m1.small
openstack flavor create --public  --id  5 --ram 1024 --disk 10 --vcpus 2 m1.medium
openstack flavor create --public  --id  7 --ram 2048 --disk 10 --vcpus 2 m1.large

