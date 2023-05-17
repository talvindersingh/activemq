# activemq
Iac Code for ActiveMQ setup with HA

**Prerequisite:**
Install Ansible on your local machine.

Steps
1. Set up your inventory file (inventory.ini) with the IP addresses or hostnames of your primary and backup instances.
2. Create a playbook (activemq.yml) that describes the deployment steps
3. Create an Nginx configuration file (nginx.conf) and place it in the same directory as the playbook.
4. Run the playbook to deploy ActiveMQ - #**ansible-playbook -i inventory.ini activemq.yml**

NOTE:
This Ansible playbook sets up ActiveMQ using Docker containers with a primary and backup instance. It implements a failover mechanism where the backup instance automatically takes over if the primary instance fails. SSL/TLS certificates are generated and copied to the ActiveMQ containers for secure communication. Nginx is installed and configured as a reverse proxy to route incoming requests to the ActiveMQ instances. The playbook assumes that Docker and Nginx are available on the target machines.

