mkdir -p /var/tmp/chroot
yum --installroot=/var/tmp/chroot --releasever=7 --nogpg --disablerepo='*' --enablerepo=base install centos-release openssh-clients wget vi nano zip unzip tar mariadb findutils iputils bind-utils rsync
echo "nameserver 8.8.8.8" >> /var/tmp/chroot/etc/resolv.conf
echo "nameserver 8.8.4.4" >> /var/tmp/chroot/etc/resolv.conf
