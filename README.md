# activemq
Iac Code for ActiveMQ setup with HA

_This project is under progress for more effcient ways to automate it. There may be some issues with different distributions of linux._

**Prerequisite:**
Install Ansible, kubeclt module for Ansible and Docker on your local machine.


Steps
Create Docker image using Dockerfile and push it to registry (#docker build -t toffee/activemq:latest)

1. Set up your inventory file (inventory.ini) with the IP addresses or hostnames of your primary and backup instances.
2. Create a playbook (activemq.yml) that describes the deployment steps.
3. Create an Nginx configuration file (nginx.conf) and place it in the same config folder or in same place as playbook.
4. Run the playbook to deploy ActiveMQ - #**ansible-playbook -i inventory.ini activemq.yml**

NOTE:
This updated playbook deploys two ActiveMQ instances: a primary and a backup. Each instance runs in its own deployment and is exposed through a service. The deployments are labeled with "role" to differentiate between primary and backup instances. The preStop lifecycle hook ensures that the ActiveMQ instance is gracefully terminated when stopping the container.

Please ensure that you have the appropriate Docker image for ActiveMQ available in your Minikube environment and adjust the configuration files and commands as needed for your specific setup.


