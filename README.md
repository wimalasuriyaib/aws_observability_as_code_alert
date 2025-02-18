terraform init  # Initializes the working directory with the required provider plugins
terraform plan  # Creates an execution plan showing what changes Terraform will make
terraform apply  # Applies the changes defined in the plan to the infrastructure
terraform apply -auto-approve  # Applies changes without asking for confirmation
terraform plan -out=tfplan  # Creates and saves the plan to a file
terraform apply tfplan  # Applies the changes from the saved plan file
terraform destroy  # Destroys all the infrastructure managed by Terraform
terraform destroy -auto-approve  # Destroys infrastructure without asking for confirmation
terraform validate  # Validates the syntax of the configuration files
