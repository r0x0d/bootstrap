.PHONY: destroy up provision vagrant local

ANSIBLE_EXTRA_VARS ?= "personal=true"

destroy: 
	vagrant destroy -f 

up: destroy
	vagrant up

rsync: 
	vagrant rsync 

provision: rsync
	vagrant provision  --provision-with ansible_local

vagrant: destroy up

local: 
	sudo ansible-galaxy install -r=requirements.yml -p=roles/ --ignore-errors
	sudo ansible-playbook playbook.yml --extra-vars="$(ANSIBLE_EXTRA_VARS)"
