# Install Docker in Debian-like systems with Ansible Playbook

In order to set up Prefect and Weaviate using Docker Compose on your cloud virtual machines, it's important to ensure that Docker Compose is installed and configured on these VMs. Docker Compose is a valuable tool for managing and running multi-container Docker applications, providing a streamlined approach for orchestrating complex services like Prefect and Weaviate.

 Run the following command to deploy docker using ansible playbook `docker.yml` :

```bash
ansible-playbook -i /path/to/inventory docker.yml
```

The `inventory file` stores the IP addresses or hostnames of target machines that Ansible will manage. It serves as a configuration file, allowing Ansible to identify the hosts on which to execute tasks specified in the playbook (docker.yml in this case).


# What next?

You can now try adding more components and deploying them to your cloud provider. You can also try to deploy Prefect and Weaviate on top of your VMs as directed in the furthur modules specific for deployment of Prefect and Weaviate.