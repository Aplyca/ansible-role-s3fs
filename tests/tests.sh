#!/bin/bash
# Test AWS provisioned with Ansible

cd $(dirname "$0") && cd ..

echo "Checking syntax"

ansible-playbook -i inventories/local playbooks.yml --connection=local --extra-vars "action=False" --syntax-check

echo "Running role"
ansible-playbook -i inventories/local playbooks.yml --connection=local --extra-vars "action=False"

echo "Checking idempotence"
ansible-playbook -i inventories/local playbooks.yml --connection=local --extra-vars "action=False" | grep -q 'changed=0.*failed=0' && (echo 'Idempotence test: pass' && exit 0) || (echo 'Idempotence test: fail' && exit 1)
