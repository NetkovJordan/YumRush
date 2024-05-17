Changes:
- App UI colors modified
- App UI display of elements modified
- App main image modified
- The feature for most loyal customer is already added CR-27
- Added a filter feature by order status per customer per CR-12
- Add description to foot item per CR-7
- Modified DB scripts
- Changed insert script data, added some new attributes to some models
- Modified functions and views
- Modified app property settings to work in the same network as DB
- Dockerized yumrush app with version 1 and 2
- Using postgre docker image alpine version (more lightweight)

AWS:
- created a security group which allows inbound traffic to ports 80, 443, 22 and 8080.
- create key pair for ec2 instance
- run with AMI amazon linux 2023
- t3.micro
- 8gb disk space


Commands:
- sudo yum -y update
- sudo yum -y install docker 
- docker --version
- sudo systemctl enable docker.service
- sudo systemctl start docker.service
- sudo curl -L https://github.com/docker/compose/releases/latest/download/docker-compose-$(uname -s | tr '[:upper:]' '[:lower:]')-$(uname -m) -o /usr/bin/docker-compose && sudo chmod 755 /usr/bin/docker-compose && docker-compose --version.
- docker-compose --version
- sudo yum -y install nginx
- sudo systemctl enable nginx && sudo systemctl start nginx
- systemctl status nginx.service
- go to etc/nginx/
- sudo nano nginx.conf
- change config and save
- sudo nginx -t 
- go to /home/ec2-user
- sudo nano docker-compose.yaml (paste docker compose config)
- sudo nano .env (paste secret values)
