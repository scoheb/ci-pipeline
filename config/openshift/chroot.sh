mkdir -p /var/tmp/chroot
mkdir -p /var/tmp/chroot/var/lib/rpm
rpm --rebuilddb --root=/var/tmp/chroot
wget http://mirror.centos.org/centos/6.9/os/x86_64/Packages/centos-release-6-9.el6.12.3.x86_64.rpm
rpm -i --root=/var/tmp/chroot --nodeps centos-release-6-9.el6.12.3.x86_64.rpm
yum --installroot=/var/tmp/chroot install -y rpm-build yum

