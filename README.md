## ASSIGNMENT


### Vagrant File 
To use this Vagrant file we need to install vagrant-hostmanager.

```
vagrant plugin install vagrant-hostmanager
vagrant up 

```
### Usage of RbbitMQ 
Build the docker rabbitmq image manually and runt the Vagrant up command 

```
docker build -f rbbitmq.Dockerfile -t assignment/rabbitmq
```
### Usage of redis
Build the docker redis image manually and run the Vagrant up command 

```
docker build -f redis.Dockerfile -t assignment/redis
```

### Usage of mysql

Build the docker redis image manually and run the Vagrant up command 

```
docker build -f mysql.Dockerfile -t assignment/mysql
```