#make sources.list writeable
mount -o remount,rw /

nano /etc/apt/sources.list

##replace sources.list content with
deb [trusted=yes] http://archive.debian.org/debian jessie main contrib non-free
deb [trusted=yes] http://archive.debian.org/debian-security jessie/updates main contrib non-free

#disable checks
echo 'Acquire::Check-Valid-Until "false";' | sudo tee /etc/apt/apt.conf.d/99no-check-valid-until

apt-get update
