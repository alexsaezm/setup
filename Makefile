.DEFAULT_GOAL=setup

setup: bootstrap workstation
	
bootstrap:
	@bash ./script/bootstrap.sh

workstation:
	@echo "Please, provide your password in order to install programs"
	@ansible-playbook ./script/workstation.yml -c local -i Workstation, -K

lab:
	@ansible-playbook ./script/lab.yml

.PHONY: setup bootstrap workstation lab
