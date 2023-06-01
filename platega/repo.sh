#! /bin/sh
#rem moitrijer

cat <<EOF> /etc/apt/sources.list
# Repositorio base stable.
deb http://archive.debian.org/debian/ stretch main contrib non-free
deb-src http://archive.debian.org/debian/ stretch main  contrib non-free

# Repositorio de actualizaciones de seguridad
deb http://archive.debian.org/debian-security stretch/updates main contrib non-free
deb-src http://archive.debian.org/debian-security stretch/updates main contrib non-free

# Repositorio multimedia
#deb http://www.deb-multimedia.org stretch main contrib non-free
EOF
