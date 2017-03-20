{"ansible_all_ipv4_addresses": ["147.75.194.63", "10.99.144.5"], "ansible_all_ipv6_addresses": ["2604:1380:1:7100::5", "fe80::ec4:7aff:fe80:5a78"], "ansible_architecture": "x86_64", "ansible_bios_date": "03/09/2016", "ansible_bios_version": "1.0a", "ansible_cmdline": {"BOOT_IMAGE": "/boot/vmlinuz", "console": "ttyS1,115200n8", "nomdmonddf": true, "nomdmonisw": true, "rd.auto": "1", "ro": true, "root": "UUID=7c410327-a756-4919-a699-7ba2e7c51dfe", "serial": true}, "ansible_date_time": {"date": "2016-09-13", "day": "13", "epoch": "1473758502", "hour": "09", "iso8601": "2016-09-13T09:21:42Z", "iso8601_basic": "20160913T092142108632", "iso8601_basic_short": "20160913T092142", "iso8601_micro": "2016-09-13T09:21:42.108680Z", "minute": "21", "month": "09", "second": "42", "time": "09:21:42", "tz": "UTC", "tz_offset": "+0000", "weekday": "Tuesday", "weekday_number": "2", "weeknumber": "37", "year": "2016"}, "ansible_default_ipv4": {"address": "147.75.194.63", "alias": "team0", "broadcast": "147.75.194.63", "gateway": "147.75.194.62", "interface": "team0", "macaddress": "0c:c4:7a:80:5a:78", "mtu": 1500, "netmask": "255.255.255.254", "network": "147.75.194.62", "type": "ether"}, "ansible_default_ipv6": {"address": "2604:1380:1:7100::5", "gateway": "2604:1380:1:7100::4", "interface": "team0", "macaddress": "0c:c4:7a:80:5a:78", "mtu": 1500, "prefix": "127", "scope": "global", "type": "ether"}, "ansible_devices": {"sda": {"holders": [], "host": "", "model": "SAMSUNG MZ7KM240", "partitions": {"sda1": {"sectors": "3873", "sectorsize": 512, "size": "1.89 MB", "start": "34"}, "sda2": {"sectors": "3995648", "sectorsize": 512, "size": "1.91 GB", "start": "4096"}, "sda3": {"sectors": "464859136", "sectorsize": 512, "size": "221.66 GB", "start": "4001792"}}, "removable": "0", "rotational": "0", "sas_address": null, "sas_device_handle": null, "scheduler_mode": "cfq", "sectors": "468862128", "sectorsize": "512", "size": "223.57 GB", "support_discard": "512", "vendor": "ATA"}, "sdb": {"holders": [], "host": "", "model": "SAMSUNG MZ7KM240", "partitions": {"sdb1": {"sectors": "3873", "sectorsize": 512, "size": "1.89 MB", "start": "34"}, "sdb2": {"sectors": "3995648", "sectorsize": 512, "size": "1.91 GB", "start": "4096"}, "sdb3": {"sectors": "464859136", "sectorsize": 512, "size": "221.66 GB", "start": "4001792"}}, "removable": "0", "rotational": "0", "sas_address": null, "sas_device_handle": null, "scheduler_mode": "cfq", "sectors": "468862128", "sectorsize": "512", "size": "223.57 GB", "support_discard": "512", "vendor": "ATA"}}, "ansible_distribution": "CentOS", "ansible_distribution_major_version": "7", "ansible_distribution_release": "Core", "ansible_distribution_version": "7.2.1511", "ansible_dns": {"nameservers": ["147.75.207.207", "8.8.8.8", "8.8.4.4"]}, "ansible_domain": "", "ansible_env": {"HOME": "/root", "LANG": "en_US.UTF-8", "LC_ALL": "en_US.UTF-8", "LC_MESSAGES": "en_US.UTF-8", "LOGNAME": "root", "MAIL": "/var/mail/root", "PATH": "/sbin:/bin:/usr/sbin:/usr/bin", "PWD": "/root", "PYTHONPATH": "", "SHELL": "/bin/bash", "SHLVL": "1", "SUDO_COMMAND": "/bin/sh -c echo BECOME-SUCCESS-jcmociehhrtjeachheaguwktlhhnoewu; LANG=en_US.UTF-8 LC_ALL=en_US.UTF-8 LC_MESSAGES=en_US.UTF-8 /usr/bin/python /root/.ansible/tmp/ansible-tmp-1473758500.38-237588651110586/setup; rm -rf \"/root/.ansible/tmp/ansible-tmp-1473758500.38-237588651110586/\" > /dev/null 2>&1", "SUDO_GID": "0", "SUDO_UID": "0", "SUDO_USER": "root", "TERM": "screen", "USER": "root", "USERNAME": "root", "_": "/usr/bin/python"}, "ansible_eth0": {"active": true, "device": "eth0", "macaddress": "0c:c4:7a:80:5a:78", "module": "igb", "mtu": 1500, "pciid": "0000:01:00.0", "promisc": false, "type": "ether"}, "ansible_eth1": {"active": true, "device": "eth1", "macaddress": "0c:c4:7a:80:5a:78", "module": "igb", "mtu": 1500, "pciid": "0000:01:00.1", "promisc": false, "type": "ether"}, "ansible_fips": false, "ansible_form_factor": "Other", "ansible_fqdn": "compute1", "ansible_gather_subset": ["hardware", "network", "virtual"], "ansible_hostname": "compute1", "ansible_interfaces": ["lo", "team0_0", "team0", "eth1", "eth0"], "ansible_kernel": "3.10.0-327.22.2.el7.x86_64", "ansible_lo": {"active": true, "device": "lo", "ipv4": {"address": "127.0.0.1", "broadcast": "host", "netmask": "255.0.0.0", "network": "127.0.0.0"}, "ipv6": [{"address": "::1", "prefix": "128", "scope": "host"}], "mtu": 65536, "promisc": false, "type": "loopback"}, "ansible_lsb": {"codename": "Core", "description": "CentOS Linux release 7.2.1511 (Core)", "id": "CentOS", "major_release": "7", "release": "7.2.1511"}, "ansible_machine": "x86_64", "ansible_machine_id": "ed21cfeae62c9d8b440cbc3f8e696dce", "ansible_memfree_mb": 31577, "ansible_memory_mb": {"nocache": {"free": 31674, "used": 324}, "real": {"free": 31577, "total": 31998, "used": 421}, "swap": {"cached": 0, "free": 1949, "total": 1949, "used": 0}}, "ansible_memtotal_mb": 31998, "ansible_mounts": [{"device": "/dev/md126", "fstype": "ext4", "mount": "/", "options": "rw,relatime,errors=remount-ro,data=ordered", "size_available": 221196554240, "size_total": 234005549056, "uuid": "7c410327-a756-4919-a699-7ba2e7c51dfe"}], "ansible_nodename": "compute1", "ansible_os_family": "RedHat", "ansible_pkg_mgr": "yum", "ansible_processor": ["GenuineIntel", "Intel(R) Xeon(R) CPU E3-1240 v5 @ 3.50GHz", "GenuineIntel", "Intel(R) Xeon(R) CPU E3-1240 v5 @ 3.50GHz", "GenuineIntel", "Intel(R) Xeon(R) CPU E3-1240 v5 @ 3.50GHz", "GenuineIntel", "Intel(R) Xeon(R) CPU E3-1240 v5 @ 3.50GHz", "GenuineIntel", "Intel(R) Xeon(R) CPU E3-1240 v5 @ 3.50GHz", "GenuineIntel", "Intel(R) Xeon(R) CPU E3-1240 v5 @ 3.50GHz", "GenuineIntel", "Intel(R) Xeon(R) CPU E3-1240 v5 @ 3.50GHz", "GenuineIntel", "Intel(R) Xeon(R) CPU E3-1240 v5 @ 3.50GHz"], "ansible_processor_cores": 4, "ansible_processor_count": 1, "ansible_processor_threads_per_core": 2, "ansible_processor_vcpus": 8, "ansible_product_name": "SYS-5039MS-H12TRF", "ansible_product_serial": "S211678X6343747", "ansible_product_uuid": "00000000-0000-0000-0000-0CC47A805A78", "ansible_product_version": "0123456789", "ansible_python": {"executable": "/usr/bin/python", "has_sslcontext": true, "type": "CPython", "version": {"major": 2, "micro": 5, "minor": 7, "releaselevel": "final", "serial": 0}, "version_info": [2, 7, 5, "final", 0]}, "ansible_python_version": "2.7.5", "ansible_selinux": {"status": "disabled"}, "ansible_service_mgr": "systemd", "ansible_ssh_host_key_dsa_public": "AAAAB3NzaC1kc3MAAACBAJ/s1c0GKDNCFbDXdJXmPCbJm3KaxJJtxWrm3H1uho43yV0TY1h3iy67TObjorXxD4WhJZm03O3G4jpdNZssMKjpHVUFzMlRMO1Vm71VLqQM+pm3DfMBrwtjQz4LXuTvlTeO+fJoMioLShQbaB/6g7DpEjctRsTkV+vgXzoOi9oRAAAAFQC78QH/nSF4nsMarCOn32xyLpa66QAAAIEAkloDIBUrzaC+eGgA5StLKIQYezIuFASde3gzCDZU2t54PvrmFxVSqTVSad7pXtaD3g1cpVRvq/7VR6KCz0QDvI6JCZR9a10iuFFfdOa32lozQJlomu6VLIYUVbIr2Ju1nfjpND4CbarCj06Md1aJOLMw75ITajR8twkM0YhuK0IAAACADV7/Ncyn/3lblkMYAgudw2MtXljiHFCEVTXl7gYwnq3PuJweW/uJIdmt7HkDGX9hq7wWUfCu6Px8GEALhmGiu6+RLCpz/UnwnHadBEw+EXWv1BfEe7r4KI5C0Gp7Zhxl/mvjwZI6XDj33Q38yyTJSJCZ424thoTePCjVP8JkQBo=", "ansible_ssh_host_key_ecdsa_public": "AAAAE2VjZHNhLXNoYTItbmlzdHAyNTYAAAAIbmlzdHAyNTYAAABBBBXR+Q4ZbO4QQ8BDd4GP+cC8Z9/jHu3MIhlP73C3gFTh/BuEwFTu+p54ryN2+TYxEfU6XuQTc0BInCIhCEzQJpA=", "ansible_ssh_host_key_ed25519_public": "AAAAC3NzaC1lZDI1NTE5AAAAILstdUJgqYK/5EHACD1sRQUcNakGM6OPZlOhvK6E9nHi", "ansible_ssh_host_key_rsa_public": "AAAAB3NzaC1yc2EAAAADAQABAAABAQCkxuwYzt0Yxrb46P9UwxeiVWSMNyql2+QGYGgor6meB63Jbepi5lCOn9Dkq3E7lPz7yk+gZCNPP96Jh0GUr7yFdSl4oeF+Im8dseh9FJzw5fhSr65zwjx98eb5ArSqcST+vlRMpbc2W5zQFirt8Ldr3Z5odzeFJtk3gZUUlKx6IuwNrXLTwJ8YhhtIUSXkPlIbB19Iit85ef6kMFaGodESYbqK2lf2V9CYZ6hWaiFga+Q7ekDDgbKbOT0MMveUoUo8yxGJURjH1+LM1kmEp1QIisuIEz0JLQ5FZmPRP93KmpAAhqlUoIa0z7KmXHzOTmFu43vdROapCm/mz4THKxS9", "ansible_swapfree_mb": 1949, "ansible_swaptotal_mb": 1949, "ansible_system": "Linux", "ansible_system_capabilities": ["cap_chown", "cap_dac_override", "cap_dac_read_search", "cap_fowner", "cap_fsetid", "cap_kill", "cap_setgid", "cap_setuid", "cap_setpcap", "cap_linux_immutable", "cap_net_bind_service", "cap_net_broadcast", "cap_net_admin", "cap_net_raw", "cap_ipc_lock", "cap_ipc_owner", "cap_sys_module", "cap_sys_rawio", "cap_sys_chroot", "cap_sys_ptrace", "cap_sys_pacct", "cap_sys_admin", "cap_sys_boot", "cap_sys_nice", "cap_sys_resource", "cap_sys_time", "cap_sys_tty_config", "cap_mknod", "cap_lease", "cap_audit_write", "cap_audit_control", "cap_setfcap", "cap_mac_override", "cap_mac_admin", "cap_syslog", "35", "36+ep"], "ansible_system_capabilities_enforced": "True", "ansible_system_vendor": "Supermicro", "ansible_team0": {"active": true, "device": "team0", "ipv4": {"address": "147.75.194.63", "broadcast": "147.75.194.63", "netmask": "255.255.255.254", "network": "147.75.194.62"}, "ipv6": [{"address": "2604:1380:1:7100::5", "prefix": "127", "scope": "global"}, {"address": "fe80::ec4:7aff:fe80:5a78", "prefix": "64", "scope": "link"}], "macaddress": "0c:c4:7a:80:5a:78", "mtu": 1500, "promisc": false, "type": "ether"}, "ansible_team0_0": {"ipv4": {"address": "10.99.144.5", "broadcast": "10.99.144.5", "netmask": "255.255.255.254", "network": "10.99.144.4"}}, "ansible_uptime_seconds": 773, "ansible_user_dir": "/root", "ansible_user_gecos": "root", "ansible_user_gid": 0, "ansible_user_id": "root", "ansible_user_shell": "/bin/bash", "ansible_user_uid": 0, "ansible_userspace_architecture": "x86_64", "ansible_userspace_bits": "64", "ansible_virtualization_role": "host", "ansible_virtualization_type": "kvm", "module_setup": true}