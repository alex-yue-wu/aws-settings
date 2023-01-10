#! /bin/sh

# update packages
sudo yum update

# install git
sudo yum install git -y

# check git version
# git version

# config
git config --global user.name "Alex Wu"
git config --global user.email "awu@company.com"

# setup SSH
ssh-keygen -t rsa -C "awu@company.com"

