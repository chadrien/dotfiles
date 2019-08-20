export DISPLAY=$(cat /etc/resolv.conf | grep nameserver | awk '{print $2}'):0

sudo sysctl -w net.ipv4.conf.all.route_localnet=1 >/dev/null
sudo iptables -t nat -I PREROUTING -p tcp -j DNAT --to-destination 127.0.0.1
sudo iptables -I INPUT -j ACCEPT

sudo sysctl -w fs.inotify.max_user_watches=524288 >/dev/null
