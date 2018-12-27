Role Name
=========

This is how I configure my machines.

Requirements
------------

None

Role Variables
--------------

```yaml
vim_config_path: '{{ ansible_user_dir }}/.vim'
```

Dependencies
------------

None

Example Playbook
----------------

```yaml
---
- hosts: all
  gather_facts: True

  roles:
    - workstation
```


License
-------

GPLv3

Author Information
------------------

Álex Sáez // https://hecat.es
