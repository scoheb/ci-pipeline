##/usr/sbin/sshd -D -e &
IP=$(cat /etc/hosts | sed '/^$/d' | tail -1 | awk '{print $1}')
sed -i -e "s/@@IP@@/$IP/" /etc/fedmsg.d/relay.py

/usr/bin/fedmsg-relay
