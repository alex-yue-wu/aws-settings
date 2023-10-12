# Setting up Docker on AWS

## Amazon Linux Instance

### update packages

```
sudo yum update
```

### install docker

```
sudo yum install docker -y
```

### add user to docker group

```
sudo usermod -a -G docker ec2-user
```

### Reload a Linux user's group assignments to docker w/o logout

```
id ec2-user
```

```
newgrp docker
```

### install docker-compose (optional)

```
sudo yum install python3-pip
```

```
sudo pip3 install docker-compose
```

### Enable docker service at AMI boot time

```
sudo systemctl enable docker.service
```

### Start the Docker service

```
sudo systemctl start docker.service
```

### verification by getting docker service status

```
sudo systemctl status docker.service
```

### export PATH

```
echo "export PATH=$PATH:/usr/local/bin" >> ~/.bash_profile
```

## Ubuntu Instance

### Update Ubuntu Package List

```
sudo apt update && sudo apt upgrade -y
```

### Install Common required packages or tools

```
sudo apt install ca-certificates curl gnupg lsb-release
```

### Add Docker’s GPG key

```
sudo mkdir -p /etc/apt/keyrings
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /etc/apt/keyrings/docker.gpg
```

### Add the official repository

```
echo "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.gpg] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null
```

### Run the system update again

```
sudo apt update
```

### Installing Docker CE on AWS Ec2 Ubuntu

```
sudo apt-get install docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin
```

### Check the Version & Status

```
docker -v
```

### To get the service status

```
systemctl status docker --no-pager -l
```

### Add your Ubuntu user to the Docker Group

```
sudo usermod -aG docker $USER
```

### check whether your current user is in the Docker group

```
id $USER
```

### Reload the Shell Session

```
newgrp docker
```
