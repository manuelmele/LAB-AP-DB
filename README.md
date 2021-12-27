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

Enter password: (supersecret)

mysql> show databases;

mysql> use WeFix;

mysql> show tables;

-Show accounts table:

mysql> show columns from accounts;

mysql> select * from accounts;

---------------------------
UPDATE INSTRUCTIONS

-Remove the "my-mysql" image from the Docker Engine

-Remove the "my-mysql" container from the Docker Engine

-Follow the instructions again

---------------------------
TABLES ATTRIBUTES:

account (
  id int NOT NULL AUTO_INCREMENT,
  first_name varchar(64) NOT NULL,
  second_name varchar(64) NOT NULL,
  email varchar(64) NOT NULL,
  user_password varchar(64) NOT NULL,
  user_role varchar(8) DEFAULT NULL,
  bio varchar(128) DEFAULT NULL,
  photo_profile blob,
  date_reset timestamp NULL DEFAULT NULL,
  reset_code varchar(64) DEFAULT NULL,
  p_iva varchar(11) DEFAULT NULL,
  identity_card_number varchar(7) DEFAULT NULL,
  PRIMARY KEY (id),
  UNIQUE KEY id_UNIQUE (id)
) 



