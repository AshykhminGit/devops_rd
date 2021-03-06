

#Напишите команду для добавления route из подсети 1 задания 3. к сетям 2.3.4. Создайте скриптовый файл add_routes.sh
#который добавлял бы эти маршруты и файл route_delete который удалял их из таблицы адресации.

#ip route add <network_ip>/<cidr> via <gateway_ip> dev <network_card_name>

#1 212.100.54.0	    255.255.255.192	/26	   212.100.54.1 - 212.100.54.62	212.100.54.63
#2	212.100.54.64	    255.255.255.192	/26	 212.100.54.65 - 212.100.54.126	212.100.54.127
#3	212.100.54.128	255.255.255.192	/26    212.100.54.129 - 212.100.54.190	212.100.54.191
#4	212.100.54.192	255.255.255.192	/26	   212.100.54.193 - 212.100.54.254	212.100.54.255

ip route add 212.100.54.64/26 via 212.100.54.65 dev eth0
ip route add 12.100.54.128/26 via 212.100.54.129 dev eth0
ip route add 12.100.54.192/26 via 212.100.54.193 dev eth0