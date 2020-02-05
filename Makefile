.DEFAULT_GOAL=workstation

workstation:
	@ansible-playbook ./script/workstation.yml -c local -i Workstation,

.PHONY: workstation