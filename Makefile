ping:
	ansible all --limit appservers -i inventory.ini -m ping

uptime:
	ansible all --limit servers -i inventory.ini -m command -a 'uptime'

install-git:
	ansible-playbook playbook_add_git.yml -i inventory.ini

uninstall-git:
	ansible-playbook playbook_rm_git.yml -i inventory.ini
