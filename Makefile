.DEFAULT_GOAL=setup

setup: bootstrap workstation
	
bootstrap:
	@bash ./script/bootstrap.sh

workstation:
	@ansible-playbook ./script/workstation.yml -c local -i Workstation,

lab:
	@ansible-playbook ./script/lab.yml

.PHONY: setup bootstrap workstation lab
