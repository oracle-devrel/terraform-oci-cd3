# terraform-oci-cd3

[![License: UPL](https://img.shields.io/badge/license-UPL-green)](https://img.shields.io/badge/license-UPL-green)<!--[![Quality gate](https://sonarcloud.io/api/project_badges/quality_gate?project=oracle-devrel_terraform-oci-cd3)](https://sonarcloud.io/dashboard?id=oracle-devrel_terraform-oci-cd3)-->


## Introduction

This repository contains Terraform modules for different OCI services that are supported and used by the [CD3 Automation Toolkit](https://github.com/oracle-devrel/cd3-automation-toolkit/tree/main). 

It is designed for users who prefer to just use the Terraform modules of the CD3-supported OCI services without utilizing the toolkit's Excel sheet and Python code.

The Terraform modules can be directly deployed using this repository as a central hub.


## Prerequisites

1. Install terraform.
   ```
   sudo wget https://releases.hashicorp.com/terraform/1.3.6/terraform_1.3.6_linux_amd64.zip
   ```
2. Unzip the file and move the unzipped folder to */usr/local/bin* path.

   ```
   unzip terraform_1.3.6_linux_amd64.zip
   ```
   ```
   sudo mv terraform /usr/local/bin
   ```
3. Make sure to have an IAM policy to allow users to manage the OCI services. Minimum requirement is to have read access to the tenancy.

   Sample policies:

   ```
   Allow group <cd3_group> to read all resources in tenancy
   Allow group <cd3_group> to manage all-resources in tenancy where any {target.resource = 'instance-family', target.resource = 'object-family', target.resource = 'volume-family', target.resource = 'virtual-network-family', target.resource = 'database-family' ,target.resource = 'dns',target.resource = 'file-family'}
   ```

### Getting Started


1. Login to the OCI console. 

2. Add public key to your user account in OCI console.
   
    **a.** In the OCI Console's top navigation bar, click the **Profile** menu, and then go to **User settings**.
   
    **b.** Click **API Keys** --> **Add API Key** .
   
    **c.** Users can either generate a new key pair from the console or add an existing public key. 
   
    **d.** Click **Add**.
   
    The configuration file read-only preview is generated.


3. After your account authenticates the scripts, make use of the modules and example folders to implement terraform.

The repository includes **Examples** folder with sample **tfvar files** for each CD3-supported OCI service, providing advanced Terraform users with a platform to build **Infrastructure as Code**. 

The **modules** directory contains reusable modules for each of the supported OCI services. 

Each module has its own **main.tf**, **variables.tf**, **outputs.tf**, **oracle_provider_req.tf** and **data.tf**. 

Customizations can be made to these files based on the requirement. Additionally, users can contribute new modules for the OCI services that are currently not supported by the toolkit.



## Contributing

<!-- If your project has specific contribution requirements, update the
    CONTRIBUTING.md file to ensure those requirements are clearly explained. -->

This project welcomes contributions from the community. Before submitting a pull
request, please [review our contribution guide](./CONTRIBUTING.md).

## Security

Please consult the [security guide](./SECURITY.md) for our responsible security
vulnerability disclosure process.

## License

Copyright (c) 2024 Oracle and/or its affiliates.

Licensed under the Universal Permissive License (UPL), Version 1.0.

See [LICENSE](LICENSE.txt) for more details.

ORACLE AND ITS AFFILIATES DO NOT PROVIDE ANY WARRANTY WHATSOEVER, EXPRESS OR IMPLIED, FOR ANY SOFTWARE, MATERIAL OR CONTENT OF ANY KIND CONTAINED OR PRODUCED WITHIN THIS REPOSITORY, AND IN PARTICULAR SPECIFICALLY DISCLAIM ANY AND ALL IMPLIED WARRANTIES OF TITLE, NON-INFRINGEMENT, MERCHANTABILITY, AND FITNESS FOR A PARTICULAR PURPOSE.  FURTHERMORE, ORACLE AND ITS AFFILIATES DO NOT REPRESENT THAT ANY CUSTOMARY SECURITY REVIEW HAS BEEN PERFORMED WITH RESPECT TO ANY SOFTWARE, MATERIAL OR CONTENT CONTAINED OR PRODUCED WITHIN THIS REPOSITORY. IN ADDITION, AND WITHOUT LIMITING THE FOREGOING, THIRD PARTIES MAY HAVE POSTED SOFTWARE, MATERIAL OR CONTENT TO THIS REPOSITORY WITHOUT ANY REVIEW. USE AT YOUR OWN RISK.
