#!/bin/bash

mkdir -p /etc/kolla/

if [[ $(ip l | grep team) ]]; then
NETWORK_INTERFACE="team0"
NEUTRON_INTERFACE="team0:0"
elif [[ $(ip l | grep bond) ]]; then
NETWORK_INTERFACE="bond0"
NEUTRON_INTERFACE="bond0:0"
elif [[ $(ip l | grep enp0s8) ]]; then
NETWORK_INTERFACE="enp0s8"
NEUTRON_INTERFACE="enp0s9"
ifup enp0s9
else
echo "Can't figure out network interface, please manually edit"
exit 1
fi
NEUTRON_PUB="$(ip -4 addr show ${NEUTRON_INTERFACE} | grep "${NEUTRON_INTERFACE}" | head -1 |awk '{print $2}' | cut -d/ -f1)"
BASE="$(echo ${NEUTRON_PUB} | cut -d. -f 1,2,3)"

GLOBALS_FILE="/etc/kolla/globals.yml"
ADDRESS="$(ip -4 addr show ${NETWORK_INTERFACE} | grep "inet" | head -1 |awk '{print $2}' | cut -d/ -f1)"

VIP="${ADDRESS}"
if [ ! -f /etc/kolla/globals.yml ]; then
cat >> ${GLOBALS_FILE} <<EOF
---
kolla_internal_vip_address: "${VIP}"
network_interface: "${NETWORK_INTERFACE}"
neutron_external_interface: "${NEUTRON_INTERFACE}"
enable_haproxy: "no"
enable_keepalived: "no"
kolla_base_distro: "ubuntu"
kolla_install_type: "source"
openstack_release: "4.0.0"
EOF
fi

if [ `egrep -c 'vmx|svm|0xc0f' /proc/cpuinfo` == '0' ] ;then
if [ ! -f /etc/kolla/config/nova/nova-compute.conf ]; then
mkdir -p /etc/kolla/config/nova/
tee > /etc/kolla/config/nova/nova-compute.conf <<-EOF
[libvirt]
virt_type=qemu
EOF
fi
fi

if [ -f /etc/kolla/passwords.yml ]; then
kolla-genpwd
sed -i "s/^keystone_admin_password:.*/keystone_admin_password: admin1/" /etc/kolla/passwords.yml
fi

