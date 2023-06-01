#!/bin/bash
# REM moitrijer

. ./00_variables.sh

cat <<EOF > /etc/netplan/01-network-manager-all.yaml
network:
 version: 2
 renderer: NetworkManager
 ethernets:
  enp0s3:
   dhcp4: no
   addresses:
   - $IP/24
   gateway4: $GATEW
   nameservers:
    addresses: [8.8.8.8]
EOF

netplan generate
netplan try
netplan apply
systemctl start systemd-resolved
systemctl enabled systemd-resolved
ip address
