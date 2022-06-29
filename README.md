# LAB-AP-DB
This is the mysql DB of the WeFix project

---------------------------
PREREQUISITES

-install docker

---------------------------
INSTUCTIONS

-Download the "my-mysql" folder


-Start Docker Engine


-Move to the my-mysql folder:

$ cd ~/my-mysql/


-Create a custom docker image:

$ docker build -t my-mysql .


-Check if there is a new image named "my-mysql":

$ docker images


-Start a docker container(port is 3306, my-mysql is the container name, supersecret is the password)

$ docker run -d -p 3306:3306 --name my-mysql -e MYSQL_ROOT_PASSWORD=supersecret my-mysql


-Verify we have our WeFix db:

$ docker exec -it my-mysql bash

root@c86ff80d7524:/# mysql -uroot -p

Enter password: supersecret

mysql> show databases;

mysql> use WeFix;

mysql> show tables;

-Show accounts table:

mysql> show columns from account;

mysql> select * from account;

---------------------------
UPDATE INSTRUCTIONS

-Remove the "my-mysql" image from the Docker Engine

-Remove the "my-mysql" container from the Docker Engine

-Follow the instructions again




