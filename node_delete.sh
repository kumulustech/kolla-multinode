#!/bin/bash

# Based on the model described here:
# http://docs.hpcloud.com/#helion/operations/remove_node.html
#   Copyright 2016 Kumulus Technologies <info@kumul.us>
#   Copyright 2016 Robert Starmer <rstarmer@gmail.com>
#
#   Licensed under the Apache License, Version 2.0 (the "License");
#   you may not use this file except in compliance with the License.
#   You may obtain a copy of the License at
#
#       http://www.apache.org/licenses/LICENSE-2.0
#
#   Unless required by applicable law or agreed to in writing, software
#   distributed under the License is distributed on an "AS IS" BASIS,
#   WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
#   See the License for the specific language governing permissions and
#   limitations under the License.

source ~/open.rc
compute_nodes=`nova service-list | grep nova-compute | awk '/|/ {print $6}' | tr '\r' ','`
echo "which compute node do you want to delete from: $compute_nodes"
read -r NODE
if [ "${compute_nodes/$NODE}" = "$compute_nodes" ] ; then
  echo "sorry, I did not get one of the hosts in $compute_nodes"
  echo "please re-run the script."
  exit 1
else
  echo "removing nova_compute and neutron_*bridge/switch agents and stopping the services on $NODE"
  # disable service
  nova_agent=`nova service-list | grep nova-compute | grep $NODE | awk '/|/ {print $2}'`
  nova service-disable --reason "node being removed" $NODE nova-compute
  ssh $NODE 'docker stop nova_compute'
  nova service-delete $nova_agent

  # disable neutron agents
  neutron_agents=`neutron agent-list | grep 'openvswitch\|linuxbridge'| grep centos | awk '/|/ {print $2}'`
  neutron agent-update --admin-state-down $agent
  ssh $NODE 'docker stop neutron_linuxbridge_agent'
  ssh $NODE 'docker stop neutron_openvswitch_agent'
  neutron agent-delete $agent
fi
