CREATE TABLE account (
  id int NOT NULL AUTO_INCREMENT,
  first_name varchar(64) NOT NULL,
  second_name varchar(64) NOT NULL,
  email varchar(64) NOT NULL,
  user_password varchar(64) NOT NULL,
  user_role varchar(8) DEFAULT NULL,
  bio varchar(128) DEFAULT NULL,
  photo_profile blob,
  date_reset timestamp NULL DEFAULT NULL,
  reset_code varchar(64) DEFAULT NULL,
  p_iva varchar(11) DEFAULT NULL,
  identity_card_number varchar(7) DEFAULT NULL,
  PRIMARY KEY (id),
  UNIQUE KEY id_UNIQUE (id)
) 