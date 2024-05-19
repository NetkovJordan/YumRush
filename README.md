# YumRush Application
### Contents:
- Code for YumRush application with features implemented
- Docker compose file for orchestration, images are already v1 and v2, v1 being the old application
- Scripts for running the database
- Make sure to run the creation, filling and views and functions in order

### Application is exposed on port 8080
Further Context:
There are 4 roles: ADMIN, DELIVER, SALEPLACEEMPLOYEE, CONSUMER.

### Changes:
- App UI colors modified
- App UI display of elements modified
- App main image modified
- The feature for most loyal customer is already added CR-27
- Added a filter feature by order status per customer per CR-12
- Add description to food item per CR-7
- Modified DB scripts
- Changed insert script data, added some new attributes to some models
- Modified functions and views
- Modified app property settings to work in the same network as DB
- Dockerized yumrush app with version 1 and 2
- Using postgre docker image alpine version (more lightweight)

### AWS:
- created a security group which allows inbound traffic to ports 80, 443, 22, 5432 and 8080.
- create key pair for ec2 instance
- run with AMI amazon linux 2023
- t3.micro
- 8gb disk space


### Commands (Commands are subject to change):
- sudo yum -y update
- mkdir yumrush-app
- nano docker-compose.yaml
- nano .env
- sudo yum -y install docker
- sudo curl -L https://github.com/docker/compose/releases/latest/download/docker-compose-$(uname -s)-$(uname -m) -o /usr/local/bin/docker-compose
- sudo chmod +x /usr/local/bin/docker-compose
- sudo docker-compose --version
- sudo systemctl start docker.service
- sudo systemctl enable docker.service
- sudo systemctl status docker.service
- sudo yum -y install nginx
- sudo systemctl start nginx.service
- sudo systemctl enable nginx.service
- sudo systemctl status nginx.service
- sudo nano etc/nginx/nginx.conf
- sudo systemctl restart nginx.service
- sudo nginx -t
- sudo python3 -m venv /opt/certbot/
- sudo /opt/certbot/bin/pip install --upgrade pip
- sudo /opt/certbot/bin/pip install certbot certbot-nginx
- sudo ln -s /opt/certbot/bin/certbot /usr/bin/certbot
- certbot --version
- sudo certbot --nginx -d www.yumrush.store
- sudo systemctl restart nginx.service
- sudo nginx -t
- cd home/ec2-user/yumrush-app
- sudo docker-compose up -d
