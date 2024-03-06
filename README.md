# Terraform Project: Creating Dev and Prod Environments with Apache Web Server

This Terraform project creates two environments, dev and prod, each with an Apache web server. The project also includes a network module to configure the necessary security group to reach the web server from the browser.

## Project Structure

```
lab4/
├── dev/
│   ├── network/
│   │   ├── main.tf
│   │   ├── variables.tf
│   │   ├── config.tf
│   │   └── output.tf
│   └── webserver/
│       ├── main.tf
│       ├── variables.tf
│       ├── config.tf
│       └── output.tf
├── prod/
│   ├── network/
│   │   ├── main.tf
│   │   ├── variables.tf
│   │   ├── config.tf
│   │   └── output.tf
│   └── webserver/
│       ├── main.tf
│       ├── variables.tf
│       ├── config.tf
│       └── output.tf
├── aws_network/
│   ├── main.tf
│   |── variables.tf
│   ├── config.tf
│   └── output.tf
│
└── README.md


## Usage

1. Clone the repository:

   ```bash
   git clone https://github.com/maahdisrostampoor/lab4.git
   ```

2. Navigate to the `dev` or `prod` directory:

   ```bash
   cd lab4/dev
   ```

3. Initialize Terraform:

   ```bash
   terraform init
   ```

4. Review the configuration in the network/main.tf, network/variables.tf, network/config.tf, network/output.tf, webserver/main.tf, webserver/variables.tf, webserver/config.tf, and webserver/output.tf files.

5. Apply the Terraform configuration:

   ```bash
   terraform apply
   ```

6. Access the Apache web server by navigating to the IP address provided in the output.


## Requirements

- Terraform installed locally.
- AWS account credentials configured.

## Author

Your Name <maahdisrostampoor@gmail.com>

---

