#!/bin/bash
#REM moitrijer

touch /etc/NetworkManager/dispatcher.d/99hostname

cat << EOF > /etc/NetworkManager/dispatcher.d/99hostname
case """"\$2"""" in

	up|dhcp4-change)
		if [ -z """"\$DHCP4_HOST_NAME"""" ]
		then
			exit 0
		else
			hostname \$DHCP4_HOST_NAME
			echo \$DHCP4_HOST_NAME > /etc/hostname
		fi
	;;
esac
EOF

chmod 755 /etc/NetworkManager/dispatcher.d/99hostname

cat /etc/NetworkManager/dispatcher.d/99hostname
