#/bin/sh
#moitrijer
sudo sed -i 's/Prompt=.*/Prompt=never/' /etc/update-manager/release-upgrades
sed -i 's/APT::Periodic::Update-Package-Lists "1"/APT::Periodic::Update-Package-Lists "0"/' /etc/apt/apt.conf.d/20auto-upgrades
