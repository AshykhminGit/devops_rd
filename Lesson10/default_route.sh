#Напишите команду для задания default route для вашей машины с использованием сетевого интерфейса eth0.

sudo ip route add default via 192.168.1.254 dev eth0
sudo route add default gw 192.168.1.1 dev eth0
