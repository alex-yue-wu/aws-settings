# Setting up Docker on AWS

## update packages

```
sudo yum update
```

## install docker

```
sudo yum install docker -y
```

## add user to docker group

```
sudo usermod -a -G docker ec2-user
```

## Reload a Linux user's group assignments to docker w/o logout

```
id ec2-user # Reload a Linux user's group assignments to docker w/o logout
```

```
newgrp docker
```

## install docker-compose (optional)

```
sudo yum install python3-pip
```

```
sudo pip3 install docker-compose # with root access
```

## Enable docker service at AMI boot time

```
sudo systemctl enable docker.service
```

## Start the Docker service

```
sudo systemctl start docker.service
```

## verification by getting docker service status

```
sudo systemctl status docker.service
```

## export PATH

```
echo "export PATH=$PATH:/usr/local/bin" >> ~/.bash_profile
```
