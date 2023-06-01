#!/bin/bash
#REM moitrijer

. ./00_variables.sh

named-checkzone $DOMINIO_COM /var/cache/bind/db.$DOMINIO_COM

named-checkzone $IP_REVER.in-addr.arpa /var/cache/bind/db.$IP_DB


