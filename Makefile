ping:
	ansible all --limit appservers -i inventory.ini -m ping

uptime:
	ansible all --limit servers -i inventory.ini -m command -a 'uptime'

# to check wihtout running
check-playbook:
	ansible-playbook --check playbook_git.yml -i inventory.ini

# we use here -t tag, also we can use  --skip-tags someTag
install-git:
	ansible-playbook playbook_git.yml -i inventory.ini -t install

uninstall-git:
	ansible-playbook playbook_git.yml -i inventory.ini -t uninstall
