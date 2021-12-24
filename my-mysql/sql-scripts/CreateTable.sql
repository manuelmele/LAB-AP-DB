CREATE TABLE accounts (
id INT PRIMARY KEY,
first_name  varchar(25) NOT NULL,
second_name varchar(15) NOT NULL,
email  varchar(50) NOT NULL,
user_password varchar(64) NOT NULL,
user_role varchar(50) NOT NULL,
bio varchar(128),
photo_profile BLOB,
date_reset TIMESTAMP,
reset_code varchar(64),
p_iva varchar(11),
identity_card_number varchar(7)
);