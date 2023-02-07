# Setting up Git on AWS

## update packages

```
sudo yum update
```

## install git

```
sudo yum install git -y
```

## check git version

```
git version
```

## create SSH key

```
ssh-keygen -t ed25519 -C "your_email@example.com"
```

## copy public key

```
cat ~/.ssh/id_ed25519.pub
```

## config

```
git config --global user.name "Alex Wu"
git config --global user.email "awu@company.com"
```

## setup SSH

```
ssh-keygen -t rsa -C "awu@company.com"
```
