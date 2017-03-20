#!/bin/bash
if [ $# -le "1" ] ; then
 echo "Usage: $0 control_ip_or_hostname compute_ip_or_hostname"
 exit 1
fi

if [ ! -f ~/.ssh/id_rsa ] ; then
ssh-keygen -t rsa -N '' =f ~/.ssh/id_rsa
cat ~/.ssh/id_rsa.pub >> ~/.ssh/authorized_keys
key=`cat ~/.ssh/id_rsa.pub`
echo ' add the following key to the /root/.ssh/authorized_keys file (add, not overwrite).'
cat ~/.ssh/id_rsa.pub
exit 1
fi
cat ./multinode.tmpl | sed -e "s/#__CONTROL__/${1}/" >/tmp/multinode_cmp.tmpl
cat /tmp/multinode_cmp.tmpl | sed -e "s/#__COMPUTE__/${2}\n#__COMPUTE__/" > multinode
rm /tmp/multinode_cmp.tmpl

echo "Run: kolla-ansible -i multinode deploy"

