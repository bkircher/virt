# virt

## Requirements

    $ sudo dnf install python3-libvirt

## Test dynamic inventory

Test if the dynamic invenory is working and Ansible can list the hosts.

    $ ansible-inventory -i inventory.yml --list

## Ping the guests

Test if Ansible can reach the guests.

    $ ansible all -i inventory.yml -m ansible.builtin.ping

