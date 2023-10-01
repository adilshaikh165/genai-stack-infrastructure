# Deploy Prefect with Docker Compose

This repository encompasses all the essentials for running Prefect Server, a Prefect agent, or the Prefect CLI via Docker Compose. It serves as a Docker Compose based toolkit for local or on Cloud Prefect experimentation and facilitates exploration of various services necessary for a production setup.

# Download the tool

Clone the repository to your ansible-enabled host


The `docker-compose.yml` file contains following services which will be deployed using above command:
 * `database` - Postgres database for Prefect Server
 * `minio` - MinIO S3-compatible object store, useful for experimenting with remote file storage without needing a cloud storage account.
 * `server` - Prefect Server API and UI
 * `agent` - Prefect Agent


# How to run it

To execute the playbook run the following command :

```bash
ansible-playbook -i /path/to/inventory prefect.yml
```
   
# What happens in the background to your machines when you run the playbook

The `prefect.yml` playbook will do the following:
 * Install Git on VM
 * Copy Docker Compose file to the target machine(VMs/localhost)
 * Start Prefect Services with Docker Compose

# Accessing the prefect dashboard

The Prefect Server container shares port 4200 with the host machine, so if you open a web browser and navigate to `http://localhost:4200` you will see the Prefect UI.
If you're using any Cloud VM then you can access the dashboard at URL `http://VM_EXTERNAL_IP_ADDR:4200`.

# Expected Output

![Alt text](image-2.png)
