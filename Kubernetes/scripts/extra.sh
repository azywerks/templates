#!/bin/bash
IFACE=eth1  # change to eth1 for DO's private network
DROPLET_IP_ADDRESS=$(ip addr show dev $IFACE | awk 'match($0,/inet (([0-9]|\.)+).* scope global/,a) { print a[1]; exit }')
echo $DROPLET_IP_ADDRESS  # check this, just in case
echo "KUBELET_EXTRA_ARGS=--node-ip=$DROPLET_IP_ADDRESS  " > /etc/default/kubelet
# systemctl daemon-reload
# systemctl restart kubelet
