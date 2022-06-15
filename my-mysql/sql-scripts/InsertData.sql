INSERT INTO account (first_name, second_name, email, user_password, user_role, bio, p_iva, identity_card_number, category) 
VALUES
	('Marco', 'Rossi', 'marcorossi@live.it', '14d96bebd30944cf29adaa00733538ddb7c6fe82a9b753c1ccef2d226aef134f', 'Customer', 'Hi! My name is Marco.', null, null, 'Customer'),
	('Marta', 'Verdi', 'martaverdi@live.it', '14d96bebd30944cf29adaa00733538ddb7c6fe82a9b753c1ccef2d226aef134f', 'Worker', 'Hi! My name is Marta and I am a gardener.', '12344378910', 'QW1234511', 'Gardener'),
	('Laura', 'Papi', 'laurapapi@gmail.com', '14d96bebd30944cf29adaa00733538ddb7c6fe82a9b753c1ccef2d226aef134f', 'Worker', 'Hi! I am a gardener since 1989. Call me if your plants need help.', '12345676910', 'QW1234501', 'Gardener'),
	('Daniela', 'Rieti', 'danielarieti4@hotmail.com', '14d96bebd30944cf29adaa00733538ddb7c6fe82a9b753c1ccef2d226aef134f', 'Worker', 'Hi! I am a painter since 1969. Call me if your walls need help.', '12345675111', 'QW1234502', 'Painter'),
	('Francesca', 'Restante', 'frarestante@gmail.com', '14d96bebd30944cf29adaa00733538ddb7c6fe82a9b753c1ccef2d226aef134f', 'Customer', 'Hi! I am a very happy and friendly person.', null, null, 'Customer'),
	('Mario', 'Angelini', 'marioangelini@alice.com', '14d96bebd30944cf29adaa00733538ddb7c6fe82a9b753c1ccef2d226aef134f', 'Customer', 'Hi! I am a very welcoming person, I will offer a coffee for sure.', null, null, 'Customer'),
	('Manuel', 'Mele', 'manumele@live.it', '14d96bebd30944cf29adaa00733538ddb7c6fe82a9b753c1ccef2d226aef134f', 'Worker', 'Hi! I am a electrician since 1999. Call me if your lights need help.', '12345672213', 'QW1234503', 'Electrician'),
	('Lucia', 'Celeste', 'luciaceleste@alice.com', '14d96bebd30944cf29adaa00733538ddb7c6fe82a9b753c1ccef2d226aef134f', 'Worker', 'Hi! My name is Lucia and I am a gardener.', '12345943910', 'QW1224511', 'Gardener');

INSERT INTO payment (account_id, date, deadline, price, currency, paymentId, payerId, is_valid)
VALUES
	(2, '2022/06/10 07:29:25', '2022/07/10 07:29:25', 4.99, 'EUR', 'PAYID-MKRPFVI7TH43827DL860373N', 'paypal', true),
	(3, '2022/01/15 16:29:25', '2022/02/15 16:29:25', 4.99, 'EUR', 'PAYID-MKRPFVI7TH43827DL8603731', 'paypal', true),
	(4, '2022/02/10 21:29:25', '2022/03/10 21:29:25', 4.99, 'EUR', 'PAYID-MKRPFVI7TH43827DL8603732', 'paypal', true),
	(7, '2022/03/10 07:29:25', '2022/04/10 07:29:25', 4.99, 'EUR', 'PAYID-MKRPFVI7TH43827DL8603733', 'paypal', true),
	(8, '2022/04/01 11:43:25', '2022/05/01 11:43:25', 4.99, 'EUR', 'PAYID-MKRPFVI7TH43827DL8603734', 'paypal', true),
	(7, '2022/04/10 13:29:25', '2022/05/10 13:29:25', 4.99, 'EUR', 'PAYID-MKRPFVI7TH43827DL8603735', 'paypal', true),
	(7, '2022/05/10 08:22:25', '2022/06/10 08:22:25', 4.99, 'EUR', 'PAYID-MKRPFVI7TH43827DL8603736', 'paypal', true),
	(7, '2022/06/10 09:59:25', '2022/07/10 09:59:25', 4.99, 'EUR', 'PAYID-MKRPFVI7TH43827DL8603737', 'paypal', true);

INSERT INTO review (userId_receive, userId_assign, content, star)
VALUES
	(7, 1, 'great work! Reccommended!', 5),
	(7, 5, 'Everything was fixed perfectly, a bit expensive though...', 3),
	(7, 6, 'Perfect!', 4),
	(6, 4, 'Very nice and welcoming', 4),
	(1, 4, 'He did not pay me!!', 1),
	(4, 6, 'Very expert and professional painter', 5),
	(6, 7, 'He was late at the appointment', 3),
	(6, 8, 'Everything was good', 5);

INSERT INTO meeting (userId_worker, userId_customer, description, date, slot_time, accepted, started, lat, lng)
VALUES
	(7, 1, 'I need you to change my lightbulbs', '2022/06/07', 'Morning', true, true, 41.890111, 12.563945),
	(7, 5, 'My TV is broken', '2022/04/15', 'Evening', true, true, 41.890111, 12.563945),
	(7, 6, 'My light switches do not work anymore', '2022/03/22', 'Afternoon', true, true, 41.890111, 12.563945),
	(4, 1, 'My kitchen needs to be repainted', '2022/02/15', 'Morning', true, true, 41.890111, 12.563945),
	(4, 6, 'I need the cieling to be painted white', '2022/02/18', 'Morning', true, true, 41.890111, 12.563945),
	(8, 6, 'I need to water my plants', '2022/04/15', 'Evening', true, true, 41.890111, 12.563945);

INSERT INTO product (user_id, price, description, title, deleted)
VALUES
	(7, 49.99, 'TV display replacement', 'Fix your TV', false),
	(7, 1.99, 'New high performance cable', 'Replace your old cable', false),
	(7, 399.00, 'New contidioner installation', 'Refresh your home', false),
	(7, 29.99, 'New ventilator to refresh the air', 'Refresh your home on budget', false),
	(7, 9.99, 'Replace your lightbulbs with my new LED lights + installation', 'Light your hosue', false),
	(7, 39.99, 'FireStick to make your tv smarter', 'Smart TV', false),
	(7, 49.99, 'New design outlets', 'Replace your old outlets', false),
	(7, 129.99, 'Set up the wiring in your garden to light up the night', 'Light your garden', false),
	(3, 59.99, 'Hedge pruning to make your garden beautiful', 'Hedge pruning', false),
	(3, 39.99, 'A beautiful lemon tree that will give you lots of lemonades!', 'Lemon tree', false),
	(3, 19.99, 'Add some tulips to make your garden gorgeous', 'Tulips', false),
	(4, 19.00, 'Refresh your walls with this classic white', 'White paint', false),
	(4, 15.99, 'Say goodbye to wall molds with this new anti-mold treatment!', 'Anti-mold paint', false),
	(8, 59.99, 'Hedge pruning to make your garden beautiful', 'Hedge pruning', false),
	(8, 39.99, 'A beautiful lemon tree that will give you lots of lemonades!', 'Lemon tree', false),
	(8, 19.99, 'Add some tulips to make your garden gorgeous', 'Tulips', false),
	(2, 59.99, 'Hedge pruning to make your garden beautiful', 'Hedge pruning', false),
	(2, 39.99, 'A beautiful lemon tree that will give you lots of lemonades!', 'Lemon tree', false),
	(2, 19.99, 'Add some tulips to make your garden gorgeous', 'Tulips', false);
