{"ansible_all_ipv4_addresses": ["147.75.100.79", "10.80.93.133"], "ansible_all_ipv6_addresses": ["2604:1380:2000:bc00::5", "fe80::ec4:7aff:fe20:59aa"], "ansible_architecture": "x86_64", "ansible_bios_date": "05/05/2015", "ansible_bios_version": "2.0a", "ansible_cmdline": {"BOOT_IMAGE": "/boot/vmlinuz", "console": "ttyS1,115200n8", "ro": true, "root": "UUID=857afc76-ec10-4276-8571-2989ada55603", "serial": true}, "ansible_date_time": {"date": "2016-09-23", "day": "23", "epoch": "1474632761", "hour": "12", "iso8601": "2016-09-23T12:12:41Z", "iso8601_basic": "20160923T121241306846", "iso8601_basic_short": "20160923T121241", "iso8601_micro": "2016-09-23T12:12:41.307072Z", "minute": "12", "month": "09", "second": "41", "time": "12:12:41", "tz": "UTC", "tz_offset": "+0000", "weekday": "Friday", "weekday_number": "5", "weeknumber": "38", "year": "2016"}, "ansible_default_ipv4": {"address": "147.75.100.79", "alias": "team0", "broadcast": "147.75.100.79", "gateway": "147.75.100.78", "interface": "team0", "macaddress": "0c:c4:7a:20:59:aa", "mtu": 1500, "netmask": "255.255.255.254", "network": "147.75.100.78", "type": "ether"}, "ansible_default_ipv6": {"address": "2604:1380:2000:bc00::5", "gateway": "2604:1380:2000:bc00::4", "interface": "team0", "macaddress": "0c:c4:7a:20:59:aa", "mtu": 1500, "prefix": "127", "scope": "global", "type": "ether"}, "ansible_devices": {"sda": {"holders": [], "host": "", "model": "INTEL SSDSC2BB08", "partitions": {"sda1": {"sectors": "3873", "sectorsize": 512, "size": "1.89 MB", "start": "34"}, "sda2": {"sectors": "3995648", "sectorsize": 512, "size": "1.91 GB", "start": "4096"}, "sda3": {"sectors": "152299520", "sectorsize": 512, "size": "72.62 GB", "start": "4001792"}}, "removable": "0", "rotational": "0", "sas_address": null, "sas_device_handle": null, "scheduler_mode": "cfq", "sectors": "156301488", "sectorsize": "512", "size": "74.53 GB", "support_discard": "4096", "vendor": "ATA"}}, "ansible_distribution": "CentOS", "ansible_distribution_major_version": "7", "ansible_distribution_release": "Core", "ansible_distribution_version": "7.2.1511", "ansible_dns": {"nameservers": ["147.75.207.207", "8.8.8.8", "8.8.4.4"]}, "ansible_domain": "", "ansible_env": {"HOME": "/root", "LANG": "en_US.UTF-8", "LC_ALL": "en_US.UTF-8", "LC_MESSAGES": "en_US.UTF-8", "LOGNAME": "root", "MAIL": "/var/mail/root", "PATH": "/sbin:/bin:/usr/sbin:/usr/bin", "PWD": "/root", "PYTHONPATH": "", "SHELL": "/bin/bash", "SHLVL": "1", "SUDO_COMMAND": "/bin/sh -c echo BECOME-SUCCESS-jayxwlvfzvusoiegziytblblqlvgeeni; LANG=en_US.UTF-8 LC_ALL=en_US.UTF-8 LC_MESSAGES=en_US.UTF-8 /usr/bin/python /root/.ansible/tmp/ansible-tmp-1474632758.2-237687522445055/setup; rm -rf \"/root/.ansible/tmp/ansible-tmp-1474632758.2-237687522445055/\" > /dev/null 2>&1", "SUDO_GID": "0", "SUDO_UID": "0", "SUDO_USER": "root", "TERM": "xterm", "USER": "root", "USERNAME": "root", "_": "/usr/bin/python"}, "ansible_eth0": {"active": true, "device": "eth0", "macaddress": "0c:c4:7a:20:59:aa", "module": "igb", "mtu": 1500, "pciid": "0000:00:14.0", "promisc": false, "type": "ether"}, "ansible_eth1": {"active": false, "device": "eth1", "macaddress": "0c:c4:7a:20:59:ab", "module": "igb", "mtu": 1500, "pciid": "0000:00:14.1", "promisc": false, "type": "ether"}, "ansible_fips": false, "ansible_form_factor": "Other", "ansible_fqdn": "student9", "ansible_gather_subset": ["hardware", "network", "virtual"], "ansible_hostname": "student9", "ansible_interfaces": ["lo", "team0_0", "team0", "eth1", "eth0"], "ansible_kernel": "3.10.0-327.22.2.el7.x86_64", "ansible_lo": {"active": true, "device": "lo", "ipv4": {"address": "127.0.0.1", "broadcast": "host", "netmask": "255.0.0.0", "network": "127.0.0.0"}, "ipv6": [{"address": "::1", "prefix": "128", "scope": "host"}], "mtu": 65536, "promisc": false, "type": "loopback"}, "ansible_lsb": {"codename": "Core", "description": "CentOS Linux release 7.2.1511 (Core)", "id": "CentOS", "major_release": "7", "release": "7.2.1511"}, "ansible_machine": "x86_64", "ansible_machine_id": "ed21cfeae62c9d8b440cbc3f8e696dce", "ansible_memfree_mb": 4710, "ansible_memory_mb": {"nocache": {"free": 7711, "used": 260}, "real": {"free": 4710, "total": 7971, "used": 3261}, "swap": {"cached": 0, "free": 1950, "total": 1950, "used": 0}}, "ansible_memtotal_mb": 7971, "ansible_mounts": [{"device": "/dev/sda3", "fstype": "ext4", "mount": "/", "options": "rw,relatime,errors=remount-ro,data=ordered", "size_available": 68791197696, "size_total": 76619612160, "uuid": "857afc76-ec10-4276-8571-2989ada55603"}], "ansible_nodename": "student9", "ansible_os_family": "RedHat", "ansible_pkg_mgr": "yum", "ansible_processor": ["GenuineIntel", "Intel(R) Atom(TM) CPU  C2550  @ 2.40GHz", "GenuineIntel", "Intel(R) Atom(TM) CPU  C2550  @ 2.40GHz", "GenuineIntel", "Intel(R) Atom(TM) CPU  C2550  @ 2.40GHz", "GenuineIntel", "Intel(R) Atom(TM) CPU  C2550  @ 2.40GHz"], "ansible_processor_cores": 4, "ansible_processor_count": 1, "ansible_processor_threads_per_core": 1, "ansible_processor_vcpus": 4, "ansible_product_name": "MBI-6418A-T5H", "ansible_product_serial": "S167357X6105183", "ansible_product_uuid": "NA", "ansible_product_version": "123456789", "ansible_python": {"executable": "/usr/bin/python", "has_sslcontext": true, "type": "CPython", "version": {"major": 2, "micro": 5, "minor": 7, "releaselevel": "final", "serial": 0}, "version_info": [2, 7, 5, "final", 0]}, "ansible_python_version": "2.7.5", "ansible_selinux": {"status": "disabled"}, "ansible_service_mgr": "systemd", "ansible_ssh_host_key_dsa_public": "AAAAB3NzaC1kc3MAAACBAKSk0rdrt4H52REwZJD/gOoiNAPTfyHm7wZqvYDB3OYqZvGq6FgyHwjaCI0pHyjXlt8SZW5s6sEXdm2wImIrW0YxoKcbH2kqmO4WMre+M0T7c/rTrOAVHPbbOzBsVzs/KeOcXdkOkcZVeHpkEtekOntW0AvQ7zvRY6k58NW/seY3AAAAFQCMSSPzWPYpyCPpViOO+4CtHU+o1QAAAIAnDeLo6Dsvj7XQDmlbuPQPPs+u9pbCIcEBmS8o2wlFXMbElDCcQTJZ+PyelpbAtjpEURwliTcKyxQ+YtnhYrXF1PN7lwIXaDgjC2mXupLNUIj1zpK06GqxIpyfuy6q31fr4gXib6ZQM38wJ+rA+0/S3PQNhq9CpgsU0d3R5lDOFwAAAIEAlRBE9Ic60C2Ky/e08CUpL35AJiqaZSvP1Uv9V0Mqw5ghep6dzqwd0VB77P8uPknvVur5GCVxX2Zd15IDErIZ9hbwgnMgRMnws2DbTvAabg1SfomKPJ92sJAjIAcFZnOFpUgavZe5J3//k1YIDvq+cFnCGkp/2ePdT1vT47vn93k=", "ansible_ssh_host_key_ecdsa_public": "AAAAE2VjZHNhLXNoYTItbmlzdHAyNTYAAAAIbmlzdHAyNTYAAABBBG9cJW7tHnEVAdVX2xz8yhpW2aBewiILjfGQiupbNsJtQcfZCdqZm3YJ+YEhq+cE4gbq9UPf4QqEJ8BlOVQfF4M=", "ansible_ssh_host_key_ed25519_public": "AAAAC3NzaC1lZDI1NTE5AAAAIOkgi7nT80t1zLCx0KntPbe5P+dvietQFLK/zMSbAhXv", "ansible_ssh_host_key_rsa_public": "AAAAB3NzaC1yc2EAAAADAQABAAABAQDLQuRE7+Dqm5t5DRCm2yDM7DcHWbemAD/LFW+fZIv6wfnJimFbp2G5iuntP01YcDbnt8w2Kta+xX3Ms7cfZ30eBuBDWK4zy5lzSeYu3F6Gy6GtxvxHuq1hO3IrkmeIzFik1a7K8grFQE4G6boA5GNvcnnqWOpfo/D4Xl7WvoNhhT78b7otUEOqT7BTaw3kZVroKoK9mN9W2niCV1wCticm1u9SzEmYSSSICOgD77DInDzXXlAVc1W08XaBPBheZDHWGl6IXThKTElNziXkqWnKngyvEK4UwyO3jmxp1v5i/rWvM6sxG67sTubeWqztxlBgivpGkuSXdEYgjI/WQct7", "ansible_swapfree_mb": 1950, "ansible_swaptotal_mb": 1950, "ansible_system": "Linux", "ansible_system_capabilities": ["cap_chown", "cap_dac_override", "cap_dac_read_search", "cap_fowner", "cap_fsetid", "cap_kill", "cap_setgid", "cap_setuid", "cap_setpcap", "cap_linux_immutable", "cap_net_bind_service", "cap_net_broadcast", "cap_net_admin", "cap_net_raw", "cap_ipc_lock", "cap_ipc_owner", "cap_sys_module", "cap_sys_rawio", "cap_sys_chroot", "cap_sys_ptrace", "cap_sys_pacct", "cap_sys_admin", "cap_sys_boot", "cap_sys_nice", "cap_sys_resource", "cap_sys_time", "cap_sys_tty_config", "cap_mknod", "cap_lease", "cap_audit_write", "cap_audit_control", "cap_setfcap", "cap_mac_override", "cap_mac_admin", "cap_syslog", "35", "36+ep"], "ansible_system_capabilities_enforced": "True", "ansible_system_vendor": "Supermicro", "ansible_team0": {"active": true, "device": "team0", "ipv4": {"address": "147.75.100.79", "broadcast": "147.75.100.79", "netmask": "255.255.255.254", "network": "147.75.100.78"}, "ipv6": [{"address": "2604:1380:2000:bc00::5", "prefix": "127", "scope": "global"}, {"address": "fe80::ec4:7aff:fe20:59aa", "prefix": "64", "scope": "link"}], "macaddress": "0c:c4:7a:20:59:aa", "mtu": 1500, "promisc": false, "type": "ether"}, "ansible_team0_0": {"ipv4": {"address": "10.80.93.133", "broadcast": "10.80.93.133", "netmask": "255.255.255.254", "network": "10.80.93.132"}}, "ansible_uptime_seconds": 11200, "ansible_user_dir": "/root", "ansible_user_gecos": "root", "ansible_user_gid": 0, "ansible_user_id": "root", "ansible_user_shell": "/bin/bash", "ansible_user_uid": 0, "ansible_userspace_architecture": "x86_64", "ansible_userspace_bits": "64", "ansible_virtualization_role": "host", "ansible_virtualization_type": "kvm", "module_setup": true}