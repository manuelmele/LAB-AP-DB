INSERT INTO account (first_name, second_name, email, user_password, user_role, bio, photo_profile, p_iva, identity_card_number, category) 
VALUES
	('Marco', 'Rossi', 'marcorossi@live.it', '14d96bebd30944cf29adaa00733538ddb7c6fe82a9b753c1ccef2d226aef134f', 'Customer', 'Hi! My name is Marco.', load_file("$(pwd)/images/io.jpeg"), null, null, 'Customer');
