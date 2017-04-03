#!/bin/bash
tempo1=$(ping 192.168.0.1 -c 1 -w 1 | cut -d" " -f7,8 | grep --color time)
tempo2=$(ping 192.168.1.1 -c 1 -w 1 | cut -d" " -f7,8 | grep --color time)
tempo3=$(ping 192.169.20.27 -c 1 -w 1 | cut -d" " -f7,8 | grep --color time)
tempo4=$(ping 192.168.3.1 -c 1 -w 1 | cut -d" " -f7,8 | grep --color time)
tempo5=$(ping 192.168.4.1 -c 1 -w 1 | cut -d" " -f7,8 | grep --color time)
tempo6=$(ping 192.168.7.1 -c 1 -w 1 | cut -d" " -f7,8 | grep --color time)
tempo7=$(ping 192.169.20.249 -c 1 -w 1 | cut -d" " -f7,8 | grep --color time)
clear
figlet "        PING"
echo -e "\033[0;37m  Local ********************** Latencia\033[0m\n"
if [ -n "$tempo1" ] ;
	then
	echo -e " Sapezal \033[0;32m******************* \033[0m$tempo1"
else
	echo -e "Sapezal \033[0;31m******************* \033[0mPacket Loss"
fi
echo
echo
if [ -n "$tempo2" ] ;
	then
	echo -e " Saudades \033[0;32m****************** \033[0m$tempo2"
else
	echo -e "Saudades \033[0;31m****************** \033[0mPacket Loss"
fi
echo
echo
if [ -n "$tempo3" ] ;
	then
	echo -e " JK \033[0;32m************************ \033[0m$tempo3"
else
	echo -e "JK \033[0;31m************************ \033[0mPacket Loss"
fi
echo
echo
if [ -n "$tempo4" ] ;
	then
	echo -e " Jaqueline \033[0;32m***************** \033[0m$tempo4"
else
	echo -e "Jaqueline \033[0;31m***************** \033[0mPacket Loss"
fi
echo
echo
if [ -n "$tempo5" ] ;
	then
	echo -e " Vilhena \033[0;32m******************* \033[0m$tempo5"
else
	echo -e "Vilhena \033[0;31m******************* \033[0mPacket Loss"
fi
echo
echo
if [ -n "$tempo6" ] ;
	then
	echo -e " Arm.Cerejeiras \033[0;32m************ \033[0m$tempo6"
else
	echo -e "Arm.Cerejeiras \033[0;31m************ \033[0mPacket Loss"
fi
echo
echo
if [ -n "$tempo7" ] ;
	then
	echo -e " Pantanal \033[0;32m****************** \033[0m$tempo7"
else
	echo -e "Pantanal \033[0;31m****************** \033[0mPacket Loss"
fi
./ping.sh