CREATE TABLE accounts (
id INT PRIMARY KEY,
first_name  varchar(25) NOT NULL,
second_name varchar(15) NOT NULL,
email  varchar(50) NOT NULL,
user_password varchar(256) NOT NULL,
user_role varchar(50) NOT NULL,
bio TEXT,
photo_profile BLOB,
date_reset TEXT,
reset_code TEXT,
p_iva TEXT,
identity_card_number TEXT
);