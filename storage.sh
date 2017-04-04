#!/bin/bash
set -x

echo "$0 compute#|control add|delete"

ssh-keygen -R $1.cloudsushi.io

device_id=`terraform state show packet_device.$1 | grep ^id | awk '/ = / {print $3}'`
volume_id=`terraform state show packet_volume.$1_vol | grep ^id | awk '/ = / {print $3}'`

if [[ $2 == 'a' ]]; then
curl -H "X-Auth-Token: ${PACKET_AUTH_TOKEN}" -H "Content-Type: application/json" \
  -X POST https://api.packet.net/storage/${volume_id}/attachments -d "{\"device_id\":\"${device_id}\"}"
device_map=`ssh $1.cloudsushi.io 'packet-block-storage-attach' | grep available | awk '/ / {print $3}'`
ssh $1.cloudsushi.io "apt-get install lvm2 parted -y"
#ssh $1.cloudsushi.io "parted ${device_map} -s -- mklabel gpt mkpart KOLLA_CEPH_OSD_BOOTSTRAP 1 -1"
ssh $1.cloudsushi.io "pvcreate ${device_map}"
ssh $1.cloudsushi.io "vgcreate cinder-volumes ${device_map}"
fi

if [[ $2 == 'd' ]]; then
  ssh $1.cloudsushi.io 'packet-block-storage-detach'
  sleep 10
  attach_id=`curl -H 'X-Auth-Token: 6sUxEHBABydE1w4Pk6grkJrMB7LWHvT8' -H 'Content-Type: \
    application/json' -X GET https://api.packet.net/storage/$volume_id/attachments | jq . | \
    grep id | awk '/:/ {print $2}' | cut -d\" -f2`
  curl -H 'X-Auth-Token: 6sUxEHBABydE1w4Pk6grkJrMB7LWHvT8' -H 'Content-Type: \
    application/json' -X DELETE https://api.packet.net/storage/attachments/${attach_id}
fi

curl -H "X-Auth-Token: ${PACKET_AUTH_TOKEN}" -H "Content-Type: application/json" \
  -X GET https://api.packet.net/storage/${volume_id}/attachments | jq .
