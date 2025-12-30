
 # Assignment 02 – Terraform & Nginx Multi-Tier Architecture

## Student Information
- **Name:** Sadaf Riaz  
- **Roll No:** 2023-BSE-077  
- **Subject:** Cloud Computing  
- **Class:** BSE5-B  
- **Instructor:** Sir Waqas  

---

## 1. Executive Summary
This assignment presents the implementation of a production-ready multi-tier web infrastructure deployed on Amazon Web Services (AWS) using Terraform. The primary objective of this project is to gain practical experience with Infrastructure as Code (IaC), cloud networking, and advanced Nginx configurations.

The deployed infrastructure consists of an Nginx server acting as a reverse proxy, load balancer, and caching server, along with three Apache backend web servers. HTTPS is implemented using a self-signed SSL certificate, and one backend server is configured as a backup to ensure high availability.

Terraform modules were used to organize the infrastructure into networking, security, and web server components. This modular approach improves reusability, scalability, and maintainability. The infrastructure was thoroughly tested for load balancing, caching, security, and failover behavior.

---

## 2. Architecture Overview
The architecture implements a high-availability, multi-tier design following cloud best practices. It separates frontend and backend components to ensure security, scalability, and fault tolerance.

### Architecture Diagram
![Architecture Diagram](screenshots/architecture_diagram.png)

### Component Descriptions

#### 1. Nginx Server
- Acts as a reverse proxy, load balancer, and caching server  
- Terminates HTTPS connections using a self-signed SSL certificate  
- Distributes traffic across backend servers  
- Handles failover in case of backend server failure  

#### 2. Backend Apache Servers
- Host the web application  
- Display system and network information using EC2 metadata  
- Two primary servers and one backup server  
- Deployed in private subnets for enhanced security  

#### 3. Virtual Private Cloud (VPC)
- Provides an isolated networking environment  
- Hosts public and private subnets  
- Ensures secure internal communication  

#### 4. Subnets
- Public subnet hosts the Nginx server  
- Private subnets host Apache backend servers  

#### 5. Internet Gateway
- Allows internet access for the public subnet  
- Enables client access to the Nginx server  

#### 6. Security Groups
- Control inbound and outbound traffic  
- Nginx allows HTTPS (port 443)  
- Backend servers allow HTTP (port 80) only from Nginx  

#### 7. Routing
- Public subnet routes traffic via Internet Gateway  
- Private subnet traffic remains internal  

---

## 3. Implementation Details

### Part 1: Infrastructure Setup

#### 1.1 Project Structure
The project follows a modular Terraform structure to separate concerns and improve maintainability.

![Project Structure](screenshots/01assignment_part1_project_structure.png)  
![Gitignore](screenshots/02assignment_part1_gitignore.png)

---

#### 1.2 Variable Configuration
Terraform variables and tfvars files are used to manage configurable values such as instance types, CIDR blocks, and region settings.

![Variables](screenshots/03assignment_part1_variables_tf.png)  
![TFVars](screenshots/04assignment_part1_terraform_tfvars.png)

---

#### 1.3 Networking Module
The networking module provisions the VPC, subnets, route tables, and internet gateway required for the infrastructure.

![Networking Main](screenshots/05assignment_part1_networking_module_main.png)  
![Networking Outputs](screenshots/06assignment_part1_networking_module_outputs.png)

---

#### 1.4 Security Module
The security module defines security groups to allow only required traffic based on the principle of least privilege.

![Security Module](screenshots/07assignment_part1_security_module.png)  
![Security Groups](screenshots/08assignment_part1_security_groups_console.png)

---

#### 1.5 Locals Configuration
Local values are used in Terraform to simplify repeated expressions and improve code readability.

![Locals](screenshots/10assignment_part1_locals_tf.png)

---

### Part 2: Webserver Module

#### 2.1 Module Design
The webserver module is responsible for provisioning EC2 instances for both Nginx and Apache servers.

![Webserver Variables](screenshots/11assignment_part2_webserver_module_variables.png)  
![Webserver Resources](screenshots/12assignment_part2_webserver_module_resources.png)  
![Webserver Outputs](screenshots/13assignment_part2_webserver_module_outputs.png)

---

#### 2.2 Module Usage
The root module integrates the webserver module with networking and security components.

![Root Integration](screenshots/14assignment_part2_root_module_integration.png)

---

### Part 3: Server Configuration Scripts

#### 3.1 Apache Backend Server Script
Shell scripts are used to automate Apache installation and configuration. Each backend server displays metadata information.

![Apache Script](screenshots/15assignment_part3_apache_script.png)  
![Backend Page](screenshots/16assignment_part3_backend_webpage.png)

---

#### 3.2 Nginx Server Setup Script
The Nginx server is configured to act as a reverse proxy, load balancer, caching server, and SSL terminator.

![Nginx Script](screenshots/20assignment_part3_nginx_script.png)  
![Nginx Default Page](screenshots/21assignment_part3_nginx_default_page.png)

---

### Part 4: Infrastructure Deployment

#### 4.1 Initial Deployment
Terraform commands are used to initialize, validate, plan, and apply the infrastructure.

![SSH Key](screenshots/23assignment_part4_ssh_key_generation.png)  
![Terraform Init](screenshots/24assignment_part4_terraform_initialization.png)  
![Terraform Validate](screenshots/25assignment_part4_terraform_validation.png)  
![Terraform Plan](screenshots/26assignment_part4_terraform_plan.png)  
![Terraform Apply](screenshots/27assignment_part4_terraform_apply.png)

---

#### 4.2 Output Configuration
Terraform outputs provide important infrastructure details such as IP addresses.

![Outputs](screenshots/28assignment_part4_terraform_output_display.png)

---

#### 4.3 AWS Console Verification
Resources were verified in the AWS Management Console.

![VPC](screenshots/30assignment_part4_aws_vpc_verification.png)  
![Subnets](screenshots/31assignment_part4_aws_subnet_verification.png)  
![Security Groups](screenshots/32assignment_part4_aws_security_groups_verification.png)  
![EC2](screenshots/33assignment_part4_aws_ec2_instances_verification.png)

---

### Part 5: Nginx Configuration & Testing

#### 5.1 Update Nginx Backend Configuration
Nginx upstream configuration was updated and tested.

![Config Update](screenshots/35assignment_part5_updated_nginx_configuration.png)

---

#### 5.2 Load Balancing Tests
Traffic distribution was verified across backend servers.

![Web1](screenshots/39assignment_part5_web1_response.png)  
![Web2](screenshots/40assignment_part5_web2_response.png)

---

#### 5.3 Cache Performance Tests
Cache HIT and MISS responses confirmed caching functionality.

![Cache Miss](screenshots/41assignment_part5_cache_miss_verification.png)  
![Cache Hit](screenshots/42assignment_part5_cache_hit_verification.png)

---

#### 5.4 High Availability Tests
Backup server was activated during backend failure.

![Backup](screenshots/47assignment_part5_backup_server_activated.png)

---

#### 5.5 Security & Performance Analysis
Security headers, HTTPS redirection, and logs were verified.

![SSL](screenshots/50assignment_part5_ssl_certificate_details.png)  
![Headers](screenshots/50assignment_part5_security_headers_verification.png)

---

## 6. Conclusion
This assignment successfully demonstrated the deployment of a secure, scalable, and highly available cloud infrastructure using AWS and Terraform. It strengthened practical skills in Infrastructure as Code, Nginx configuration, and cloud networking.

---

## Repository Link
🔗 https://github.com/SadafRiaz-077/cc_sadafriaz-077_Assignment-2
# Assignment 2


