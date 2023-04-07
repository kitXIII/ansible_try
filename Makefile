ping:
	ansible all -i inventory.ini -m ping

uptime:
	ansible all -i inventory.ini -m command -a 'uptime'
