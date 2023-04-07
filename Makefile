ping:
	ansible all --limit appservers -i inventory.ini -m ping

uptime:
	ansible all --limit servers -i inventory.ini -m command -a 'uptime'
