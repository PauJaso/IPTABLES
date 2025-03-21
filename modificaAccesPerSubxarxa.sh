echo " Lista de subredes (Nombre --> Rango IPs)\n
	Subred0 --> 192.68.2.32/27 \n
	Subred1 --> 192.68.2.64/27 \n
	Subred2 --> 192.68.2.96/27 \n
	Subred3 --> 192.68.2.128/27 \n
	Subred4 --> 192.68.2.160/27 \n
	Subred5 --> 192.68.2.192/27 \n
	Subred6 --> 192.68.2.224/27 \n"

echo "Introduce Subred Acción (0: denegar trafico, 1: permitir trafico)"

read subnet action

case $subnet in
	"subnet0")
		if [$action=1]
		then
			iptables -F subred0
			iptables -A subred0 -j ACCEPT
		else
			iptables -F subred0
			iptables -A subred0 -j DROP
		fi
	;;
	"subnet1")
		if [$action=1]
		then
			iptables -F subred1
			iptables -A subred1 -j ACCEPT
		else
			iptables -F subred1
			iptables -A subred1 -j DROP
		fi
	;;
	"subnet2")
		if [$action=1]
		then
			iptables -F subred2
			iptables -A subred2 -j ACCEPT
		else
			iptables -F subred2
			iptables -A subred2 -j DROP
		fi
	;;
	"subnet3")
		if [$action=1]
		then
			iptables -F subred3
			iptables -A subred3 -j ACCEPT
		else
			iptables -F subred3
			iptables -A subred3 -j DROP
		fi
	;;
	"subnet4")
		if [$action=1]
		then
			iptables -F subred4
			iptables -A subred4 -j ACCEPT
		else
			iptables -F subred4
			iptables -A subred4 -j DROP
		fi
	;;
	"subnet5")
		if [$action=1]
		then
			iptables -F subred5
			iptables -A subred5 -j ACCEPT
		else
			iptables -F subred5
			iptables -A subred5 -j DROP
		fi
	;;
	"subnet6")
		if [$action=1]
		then
			iptables -F subred6
			iptables -A subred6 -j ACCEPT
		else
			iptables -F subred6
			iptables -A subred6 -j DROP
		fi
	;;
	*)
		echo "no existe la subred: $subnet"
	;;
	
	
esac


