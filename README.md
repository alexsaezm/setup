# setup
This is how I configure my machines

> This is a work in progress that suits my needs.
> Use at your own risk.


When Ansible connects to a machine, it is going to gather facts in order to
find how to proceed. But the things that must be done, are defined in the
server itself using the ~/.facts (take a look at the ansible.cfg inside this
repository).

# TODO roles
List of things I must implement

## Vim role
* Split lines in Markdown files when 80 characters are reach.
* Install theme and plugins
* Install pathogen

## Time machine role
* Install SMB and set up everything for be a Time machine server.
