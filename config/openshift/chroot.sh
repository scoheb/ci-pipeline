mkdir -p /var/tmp/chroot
mkdir -p /var/tmp/chroot/var/lib/rpm
rpm --rebuilddb --root=/var/tmp/chroot
wget http://mirror.centos.org/centos/5/os/x86_64/CentOS/centos-release-5-4.el5.centos.1.x86_64.rpm
rpm -i --root=/var/tmp/chroot --nodeps centos-release-5-4.el5.centos.1.x86_64.rpm
yum --installroot=/var/tmp/chroot install -y rpm-build yum

