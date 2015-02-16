# Ansible Role: Aegir

[![Build Status](https://travis-ci.org/GetValkyrie/ansible-role-aegir.svg?branch=master)](https://travis-ci.org/GetValkyrie/ansible-role-aegir)

Installs Aegir, a control panel for deploying and managing large networks of Drupal sites.

## Requirements

None.

## Role Variables

Available variables are listed below, along with default values (see `defaults/main.yml`):


## Dependencies

  - geerlingguy.drush (Installs Drush).

## Example Playbook

    - hosts: servers
      roles:
        - { role: getvalkyrie.aegir }

After the playbook runs, the Aegir front-end site will be available, as will
the Drush extensions (Provision, et. al.) that do the heavy lifting.

## License

MIT / BSD

## Author Information

This role was created in 2015 by [Christopher Gervais](http://ergonlogic.com/), lead maintainer of the [Aegir Hosting System](http://www.aegirproject.org).
