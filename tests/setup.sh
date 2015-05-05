#/bin/sh

# Completely remove mysql
#sudo apt-get remove -y --purge mysql-server mysql-client mysql-common
#sudo apt-get autoremove -y
#sudo apt-get autoclean
#sudo rm -rf /var/lib/mysql
#sudo rm -rf /root/.my.cnf

curl https://raw.githubusercontent.com/GetValkyrie/ansible-bootstrap/master/install-ansible.sh | /bin/sh
ansible-galaxy install --ignore-errors http://github.com/getvalkyrie/ansible-role-mysql,,getvalkyrie.mysql
ansible-galaxy install --ignore-errors http://github.com/getvalkyrie/ansible-role-drush,,getvalkyrie.drush
target=/etc/ansible/roles/ansible-role-aegir
if [ ! -e $target ]; then
  mkdir -p /etc/ansible/roles
  ln -s /vagrant/ $target
fi
 
