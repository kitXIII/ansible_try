ping:
	ansible all --limit appservers -i inventory.ini -m ping

uptime:
	ansible all --limit servers -i inventory.ini -m command -a 'uptime'

# to check wihtout running
check-playbook:
	ansible-playbook --check playbook.yml -i inventory.ini

# we use here -t tag, also we can use  --skip-tags someTag
install:
	ansible-playbook playbook.yml -i inventory.ini -t install

install-node:
	ansible-playbook playbook.yml -i inventory.ini -t install-node

uninstall-node:
	ansible-playbook playbook.yml -i inventory.ini -t uninstall-node
