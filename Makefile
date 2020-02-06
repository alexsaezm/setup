.DEFAULT_GOAL=setup
THIS_FILE := $(lastword $(MAKEFILE_LIST))

setup:
	@$(MAKE) -f $(THIS_FILE) bootstrap
	@$(MAKE) -f $(THIS_FILE) workstation
	
bootstrap:
	@bash ./script/bootstrap.sh

workstation:
	@echo "Please, provide your password in order to install programs"
	@ansible-playbook ./script/workstation.yml -c local -i Workstation, -K

.PHONY: setup bootstrap workstation
