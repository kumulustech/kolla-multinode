{"ansible_all_ipv4_addresses": ["13.7.195.35"], "ansible_all_ipv6_addresses": ["fe80::f816:3eff:fe0c:feff"], "ansible_architecture": "x86_64", "ansible_bios_date": "01/01/2011", "ansible_bios_version": "0.5.1", "ansible_cmdline": {"BOOT_IMAGE": "/boot/vmlinuz-4.4.0-31-generic", "console": "ttyS0", "ro": true, "root": "LABEL=cloudimg-rootfs"}, "ansible_date_time": {"date": "2016-08-11", "day": "11", "epoch": "1470907303", "hour": "09", "iso8601": "2016-08-11T09:21:43Z", "iso8601_basic": "20160811T092143248131", "iso8601_basic_short": "20160811T092143", "iso8601_micro": "2016-08-11T09:21:43.248201Z", "minute": "21", "month": "08", "second": "43", "time": "09:21:43", "tz": "UTC", "tz_offset": "+0000", "weekday": "Thursday", "weekday_number": "4", "weeknumber": "32", "year": "2016"}, "ansible_default_ipv4": {"address": "13.7.195.35", "alias": "ens3", "broadcast": "13.7.195.255", "gateway": "13.7.192.1", "interface": "ens3", "macaddress": "fa:16:3e:0c:fe:ff", "mtu": 1500, "netmask": "255.255.252.0", "network": "13.7.192.0", "type": "ether"}, "ansible_default_ipv6": {}, "ansible_devices": {"sr0": {"holders": [], "host": "IDE interface: Intel Corporation 82371SB PIIX3 IDE [Natoma/Triton II]", "model": "QEMU DVD-ROM", "partitions": {}, "removable": "1", "rotational": "1", "scheduler_mode": "deadline", "sectors": "820", "sectorsize": "2048", "size": "1.60 MB", "support_discard": "0", "vendor": "QEMU"}, "vda": {"holders": [], "host": "SCSI storage controller: Red Hat, Inc Virtio block device", "model": null, "partitions": {"vda1": {"sectors": "251656159", "sectorsize": 512, "size": "120.00 GB", "start": "2048"}}, "removable": "0", "rotational": "1", "scheduler_mode": "", "sectors": "251658240", "sectorsize": "512", "size": "120.00 GB", "support_discard": "0", "vendor": "0x1af4"}, "vdb": {"holders": [], "host": "SCSI storage controller: Red Hat, Inc Virtio block device", "model": null, "partitions": {}, "removable": "0", "rotational": "1", "scheduler_mode": "", "sectors": "8388608", "sectorsize": "512", "size": "4.00 GB", "support_discard": "0", "vendor": "0x1af4"}}, "ansible_distribution": "Ubuntu", "ansible_distribution_major_version": "16", "ansible_distribution_release": "xenial", "ansible_distribution_version": "16.04", "ansible_dns": {"nameservers": ["8.8.8.8"], "search": ["bdf.io"]}, "ansible_domain": "", "ansible_ens3": {"active": true, "device": "ens3", "ipv4": {"address": "13.7.195.35", "broadcast": "13.7.195.255", "netmask": "255.255.252.0", "network": "13.7.192.0"}, "ipv6": [{"address": "fe80::f816:3eff:fe0c:feff", "prefix": "64", "scope": "link"}], "macaddress": "fa:16:3e:0c:fe:ff", "mtu": 1500, "pciid": "virtio0", "promisc": false, "type": "ether"}, "ansible_env": {"HOME": "/root", "LANG": "en_US.UTF-8", "LC_ALL": "en_US.UTF-8", "LC_MESSAGES": "en_US.UTF-8", "LOGNAME": "root", "MAIL": "/var/mail/root", "PATH": "/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin", "PWD": "/home/ubuntu", "SHELL": "/bin/bash", "SUDO_COMMAND": "/bin/sh -c echo BECOME-SUCCESS-duyaqeycgdftgpagmxfewceecgqnajsi; /bin/sh -c 'LANG=en_US.UTF-8 LC_ALL=en_US.UTF-8 LC_MESSAGES=en_US.UTF-8 /usr/bin/python /home/ubuntu/.ansible/tmp/ansible-tmp-1470907302.36-231377496674538/setup; rm -rf \"/home/ubuntu/.ansible/tmp/ansible-tmp-1470907302.36-231377496674538/\" > /dev/null 2>&1'", "SUDO_GID": "1000", "SUDO_UID": "1000", "SUDO_USER": "ubuntu", "TERM": "xterm-256color", "USER": "root", "USERNAME": "root"}, "ansible_fips": false, "ansible_form_factor": "Other", "ansible_fqdn": "compute03", "ansible_hostname": "compute03", "ansible_interfaces": ["lo", "ens3"], "ansible_kernel": "4.4.0-31-generic", "ansible_lo": {"active": true, "device": "lo", "ipv4": {"address": "127.0.0.1", "broadcast": "host", "netmask": "255.0.0.0", "network": "127.0.0.0"}, "ipv6": [{"address": "::1", "prefix": "128", "scope": "host"}], "mtu": 65536, "promisc": false, "type": "loopback"}, "ansible_lsb": {"codename": "xenial", "description": "Ubuntu 16.04.1 LTS", "id": "Ubuntu", "major_release": "16", "release": "16.04"}, "ansible_lvm": {"lvs": {}, "vgs": {}}, "ansible_machine": "x86_64", "ansible_machine_id": "281c3ef9d2c84ecebf83fbffe3c38cb3", "ansible_memfree_mb": 3178, "ansible_memory_mb": {"nocache": {"free": 3829, "used": 122}, "real": {"free": 3178, "total": 3951, "used": 773}, "swap": {"cached": 0, "free": 4095, "total": 4095, "used": 0}}, "ansible_memtotal_mb": 3951, "ansible_mounts": [{"device": "/dev/vda1", "fstype": "ext4", "mount": "/", "options": "rw,relatime,data=ordered", "size_available": 123523432448, "size_total": 124840263680, "uuid": "73e92991-4049-426c-8a97-ea641be3c74b"}], "ansible_nodename": "compute03", "ansible_os_family": "Debian", "ansible_pkg_mgr": "apt", "ansible_processor": ["GenuineIntel", "Intel Xeon E312xx (Sandy Bridge)", "GenuineIntel", "Intel Xeon E312xx (Sandy Bridge)", "GenuineIntel", "Intel Xeon E312xx (Sandy Bridge)", "GenuineIntel", "Intel Xeon E312xx (Sandy Bridge)"], "ansible_processor_cores": 1, "ansible_processor_count": 4, "ansible_processor_threads_per_core": 1, "ansible_processor_vcpus": 4, "ansible_product_name": "OpenStack Nova", "ansible_product_serial": "84db6451-7fbf-4908-b1bc-405040f550c9", "ansible_product_uuid": "281C3EF9-D2C8-4ECE-BF83-FBFFE3C38CB3", "ansible_product_version": "2015.1.0-3.el7", "ansible_python_version": "2.7.12", "ansible_selinux": false, "ansible_service_mgr": "systemd", "ansible_ssh_host_key_dsa_public": "AAAAB3NzaC1kc3MAAACBAMbvfERZAqvsI1Vt7wc9KVkQAEJQpjrk9mDl1IdUu4o23TJGCMvVVEaIBPFBZEXWpxbBojvUEULiF7+TwIs62J3avoAI1FkqkzWV5FxTydDXO3cjyDyqYFE0pMB+JC2V1hyPB/aVUZr07+6owezMNyySt3hbgjMgjp592phowDrRAAAAFQDPcEREh2Z1v7Bvu0lSRxJ0MEAzHQAAAIEAtQzrxODGy+7R1u92xu2iZW1hyAp0gOcF574Udb3qV+mDTEIwRZyEWUMvKlPbNRhuWByrV3+ZH83qVov2uCSh3rEDzwME+PZd7ddhVuBEZwxzNQv4Br+/CQm2OVDXyv1HjCSBt3RTAR0QaZwb++29Cb2L5OeABugcgEIKtvr78YcAAACBAI8XtvCKunrONummhxS5VD9rMqvC/3KVUZgT7vUt060/O+ppNO31yxDYuHuYeVO+gC710gt1WCH3XnRMN6fmRCB7wYU3ZXiVTLuH7ocJZGEnvspbf/MZCCoBLNHgIhaTQBrBHkvLMWnUcLGxgOKwFHHGylrt3WWwYM76CrCK2cZj", "ansible_ssh_host_key_ecdsa_public": "AAAAE2VjZHNhLXNoYTItbmlzdHAyNTYAAAAIbmlzdHAyNTYAAABBBAj+vUsjPgDN8vdpHrm6QeHEINtF321wn7DhvNT2u5kMZIkxT9+0pPLvoO255D3kPTVR60lyoSosKZbq1P0Om0A=", "ansible_ssh_host_key_ed25519_public": "AAAAC3NzaC1lZDI1NTE5AAAAIGpTnqEaZNppIOGlwzIlzTJpiRAwMA6Ao4yzmWPabwCN", "ansible_ssh_host_key_rsa_public": "AAAAB3NzaC1yc2EAAAADAQABAAABAQC8AfXediAipupu234Z6kJP2ZDQ+IJ6noFTVZwari+6NRlCzma7Q754sy7ZmWdLaSyasAHDj57DvL0XZ97yk0abzq1ISuRBKlw3wp5e1ZqYvYFQfaXXYoAAIDALqaqM1OyvWAjiTXnsZZC8RWr1yPO7w9ZxSoceY3KRilRppJqez17mr4n8bMusSXMbK2v4YLzuVx3Js0b0JTSL+VfxBcGNH5VdepRNRmTdxp9naZLfAc3WAd6XzTJIC/RQdQS16Kqz02QdiRtO8NxEJsVK+YMfBidKtIv2b92fCPhSPoD7aEC5hxM/V9ysWAIMkh3QfuVwF5uaqhrZmdOzRu34IFq9", "ansible_swapfree_mb": 4095, "ansible_swaptotal_mb": 4095, "ansible_system": "Linux", "ansible_system_vendor": "Fedora Project", "ansible_uptime_seconds": 1558, "ansible_user_dir": "/root", "ansible_user_gecos": "root", "ansible_user_gid": 0, "ansible_user_id": "root", "ansible_user_shell": "/bin/bash", "ansible_user_uid": 0, "ansible_userspace_architecture": "x86_64", "ansible_userspace_bits": "64", "ansible_virtualization_role": "NA", "ansible_virtualization_type": "NA", "module_setup": true}