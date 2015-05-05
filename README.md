# Ansible Role: Aegir

[![Build Status](https://travis-ci.org/GetValkyrie/ansible-role-aegir.svg?branch=master)](https://travis-ci.org/GetValkyrie/ansible-role-aegir)

Installs Aegir, a control panel for deploying and managing large networks of Drupal sites.

## Requirements

A MySQL server is required. This server can be installed on the same machine,
or a separate one (hence why this isn't listed as a dependency.) See the
'Example Playbook' section below for a simple method of installing a mysql
server with Ansible. If this role is not present, then the
`mysql_root_username`and `mysql_root_password` variables must be set.

## Role Variables

Available variables are listed below, along with default values (see `defaults/main.yml`):


## Dependencies

  - getvalkyrie.drush (Installs Drush).

## Example Playbook

    - hosts: servers
      roles:
        - { role: getvalkyrie.mysql }
        - { role: getvalkyrie.aegir }

After the playbook runs, the Aegir front-end site will be available, as will
the Drush extensions (Provision, et. al.) that do the heavy lifting.

## License

MIT / BSD

## Author Information

This role was created in 2015 by [Christopher Gervais](http://ergonlogic.com/), lead maintainer of the [Aegir Hosting System](http://www.aegirproject.org).
