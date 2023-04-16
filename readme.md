
# Build Infrastructure - Terraform GCP Example (get started)
Build, change, and destroy Google Cloud Platform (GCP) infrastructure using Terraform. This repository is based on [Get Started - Google Cloud infrastructure using Terraform](https://developer.hashicorp.com/terraform/tutorials/gcp-get-started), you can follow this tutorial on **Terrafom** web site.

## Prerequisites
- A **Google Cloud Platform** account. If you do not have a GCP account, [create one now](https://console.cloud.google.com/freetrial/). This steps can be completed using only the services included in the [GCP free tier](https://cloud.google.com/free/).

- [Terraform 0.15.3+](https://developer.hashicorp.com/terraform/tutorials/aws-get-started/install-cli) installed locally. 
    - With **Terraform installed**, you are ready to create some infrastructure. [See oficial documentation Terraform installation.](https://developer.hashicorp.com/terraform/tutorials/gcp-get-started/install-cli)



## Set up GCP

After creating your GCP account, create or modify the following resources to enable Terraform to provision your infrastructure:
- [**Create a GCP Project**](https://console.cloud.google.com/projectcreate) in the GCP console and make note of the project ID.
- Enable Google Compute Engine for your project [in the GCP console](https://console.developers.google.com/apis/library/compute.googleapis.com). Make sure to select the project you are using to follow this tutorial and click the **"Enable"** button.
- [Create a service account key](https://console.cloud.google.com/apis/credentials/serviceaccountkey) to enable Terraform to access your GCP account.
- After you create your service account, download your service account key on detail page, **select**ing **the "Keys" tab**.
- Rename the JSON KEY file to ``gpc-service-account-key.json`` downloaded and move to ``learn-terraform-gcp`` directory.
- Into ``learn-terraform-gcp`` directory, copy ``terraform.tfvars.EXAMPLE`` to ``terraform.tfvars``and past the Project ID into the ``project`` var, on this new file.
```bash
    cp terraform.tfvars.EXAMPLE terraform.tfvars
```
## Step to Deploy Terraform Configuration

```bash
  cd learn-terraform-gcp && ls
```

Them ``main.tf`` has a principal confirmation:
- The ``terraform {}`` block contains Terraform settings. 
- The ``provider`` block configures the specified provider, in this case google.
- Use ``resource`` blocks to define components of your infrastructure.

### Initialize the directory
Initialize the directory with ``terraform init``. This step downloads the providers defined in the configuration.
```bash
  terraform init
```

### Format and validate the configuration
```bash
  terraform fmt
```
```bash
  terraform validate
```

### See Execution Plan
Generates a speculative execution plan, showing what actions Terraform would take to apply the current configuration. This command will not actually perform the planned actions.

```bash
  terraform plan
```

### Create infrastructure
Apply the configuration now with the ``terraform apply`` command. Terraform will indicate what infrastructure changes it plans to make, and prompt for your approval before it makes those changes. Say ``yes``.

```bash
  terraform apply
```

### Inspect state
When you applied your configuration, Terraform wrote data into a file called ``terraform.tfstate``. Terraform stores the IDs and properties of the resources it manages in this file, so that it can update or destroy those resources going forward.

Inspect the current state using ``terraform show``:
```bash
  terraform show
```

### Destroy
The terraform destroy command terminates resources managed by your Terraform project. This command is the inverse of terraform apply in that it terminates all the resources specified in your Terraform state. `It does not destroy resources running elsewhere that are not managed by the current Terraform project.`
```bash
  terraform destroy
```
Answer ``yes`` to execute this plan and destroy the infrastructure.
