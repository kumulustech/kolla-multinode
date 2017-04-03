#!/bin/bash
echo "creating swift disks in /tmp"

apt-get install parted xfsprogs -y

index=0
for d in sdd sde sdf; do
    free_device=$(losetup -f)
    fallocate -l 3G /tmp/$d
    losetup $free_device /tmp/$d
    parted $free_device -s -- mklabel gpt mkpart KOLLA_SWIFT_DATA 1 -1
    sudo mkfs.xfs -f -L d${index} ${free_device}p1
    (( index++ ))
done

export KOLLA_INTERNAL_ADDRESS="$(ip -4 addr show bond0 | grep "inet" | head -1 |awk '{print $2}' | cut -d/ -f1)"
export KOLLA_SWIFT_BASE_IMAGE="kolla/ubuntu-source-swift-base:4.0.0"

mkdir -p /etc/kolla/config/swift

# Object ring
docker run \
  --rm \
  -v /etc/kolla/config/swift/:/etc/kolla/config/swift/ \
  $KOLLA_SWIFT_BASE_IMAGE \
  swift-ring-builder \
    /etc/kolla/config/swift/object.builder create 10 3 1

for i in {0..2}; do
  docker run \
    --rm \
    -v /etc/kolla/config/swift/:/etc/kolla/config/swift/ \
    $KOLLA_SWIFT_BASE_IMAGE \
    swift-ring-builder \
      /etc/kolla/config/swift/object.builder add r1z1-${KOLLA_INTERNAL_ADDRESS}:6000/d${i} 1;
done

# Account ring
docker run \
  --rm \
  -v /etc/kolla/config/swift/:/etc/kolla/config/swift/ \
  $KOLLA_SWIFT_BASE_IMAGE \
  swift-ring-builder \
    /etc/kolla/config/swift/account.builder create 10 3 1

for i in {0..2}; do
  docker run \
    --rm \
    -v /etc/kolla/config/swift/:/etc/kolla/config/swift/ \
    $KOLLA_SWIFT_BASE_IMAGE \
    swift-ring-builder \
      /etc/kolla/config/swift/account.builder add r1z1-${KOLLA_INTERNAL_ADDRESS}:6001/d${i} 1;
done

# Container ring
docker run \
  --rm \
  -v /etc/kolla/config/swift/:/etc/kolla/config/swift/ \
  $KOLLA_SWIFT_BASE_IMAGE \
  swift-ring-builder \
    /etc/kolla/config/swift/container.builder create 10 3 1

for i in {0..2}; do
  docker run \
    --rm \
    -v /etc/kolla/config/swift/:/etc/kolla/config/swift/ \
    $KOLLA_SWIFT_BASE_IMAGE \
    swift-ring-builder \
      etc/kolla/config/swift/container.builder add r1z1-${KOLLA_INTERNAL_ADDRESS}:6002/d${i} 1;
done

for ring in object account container; do
  docker run \
    --rm \
    -v /etc/kolla/config/swift/:/etc/kolla/config/swift/ \
    $KOLLA_SWIFT_BASE_IMAGE \
    swift-ring-builder \
      /etc/kolla/config/swift/${ring}.builder rebalance;
done
