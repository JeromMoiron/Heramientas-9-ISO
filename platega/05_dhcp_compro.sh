#!/bin/bash
#REM moitrijer

dhcpd -t

service isc-dhcp-server restart
service isc-dhcp-server status