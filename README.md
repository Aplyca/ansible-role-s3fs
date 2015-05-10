# Ansible Role: s3fs

[![Build Status](https://travis-ci.org/Aplyca/ansible-role-s3fs.svg?branch=master)](https://travis-ci.org/Aplyca/ansible-role-s3fs)
[![Circle CI](https://circleci.com/gh/Aplyca/ansible-role-s3fs.svg?style=svg)](https://circleci.com/gh/Aplyca/ansible-role-s3fs)
Ansible Role that installs and configure a web accelerator based on Varnish on Debian/Ubuntu. Aditionally install a start/stop script to mount/unmount buckets and add the mountpoints to the fstab file.


## Requirements

Use hash behavior for variables in ansible.cfg
See example: https://github.com/Aplyca/ansible-role-s3fs/blob/master/tests/ansible.cfg
See official docs: http://docs.ansible.com/intro_configuration.html#hash-behaviour

## Installation

Using ansible galaxy:
```bash
ansible-galaxy install mauricios.s3fs
```
You can add this role as a dependency for other roles, add the role to the meta/main.yml file of your own role:
```yaml
dependencies:
  - { role: mauricios.s3fs }
```

## Role Variables

See default variables: https://github.com/Aplyca/ansible-role-s3fs/blob/master/defaults/main.yml

## Dependencies

None.

## Testing

Use Vagrant to test the role:

```bash
cd tests;
vagrant up;
```

## License

MIT / BSD

## Author Information

Mauricio Sánchez from Aplyca SAS (http://www.aplyca.com)
