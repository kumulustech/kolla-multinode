#! /bin/bash

source /root/open.rc
curl http://download.cirros-cloud.net/0.3.4/cirros-0.3.4-x86_64-disk.img > cirros-0.3.4-x86_64-disk.img
openstack image create --container-format bare --disk-format raw --min-disk 1 --min-ram 512 --public --file cirros-0.3.4-x86_64-disk.img cirros
rm cirros-0.3.4-x86_64-disk.img
