# activemq
Iac Code for ActiveMQ setup with HA
**Prerequisite:**
Install Ansible on your local machine.

Steps
1.Set up your inventory file (inventory.ini) with the IP addresses or hostnames of your primary and backup instances.
2. Create a playbook (activemq.yml) that describes the deployment steps
3. Create an Nginx configuration file (nginx.conf) and place it in the same directory as the playbook.
4. Run the playbook to deploy ActiveMQ - 
# ansible-playbook -i inventory.ini activemq.yml

