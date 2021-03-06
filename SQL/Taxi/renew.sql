USE Taxi
GO

DROP TABLE IF EXISTS address

CREATE TABLE address
(
	id INT PRIMARY KEY IDENTITY,
	district NVARCHAR(20) NOT NULL,
	street NVARCHAR(20) NOT NULL,
	house INT NOT NULL,
	entrance INT NOT NULL,
	UNIQUE(district, street, house, entrance)
)

DROP TABLE IF EXISTS cars

CREATE TABLE cars
(
	id INT PRIMARY KEY IDENTITY,
	type NVARCHAR(10) DEFAULT 'passenger',
	CONSTRAINT car_types CHECK(type IN ('passenger', 'freight')),
	brand NVARCHAR(15) NOT NULL,
	number NCHAR(6) UNIQUE CHECK(number LIKE '[A-Z][0-9][0-9][0-9][A-Z][A-Z]') NOT NULL,
	color NVARCHAR(50),
	number_of_seats INT NOT NULL,
	driver NVARCHAR(100),
	free BIT DEFAULT 0,
	district NVARCHAR(20)
)

DROP TABLE IF EXISTS customers

CREATE TABLE customers
(
	id INT PRIMARY KEY IDENTITY,
	name NVARCHAR(20),
	phone NCHAR(15) UNIQUE NOT NULL,
	CONSTRAINT check_phone CHECK(phone LIKE '8-[0-9][0-9][0-9]-[0-9][0-9][0-9]-[0-9][0-9]-[0-9][0-9]'),
	address_id INT,
	count INT DEFAULT 0,
	regular BIT DEFAULT 0
)

DROP TABLE IF EXISTS orders

CREATE TABLE orders
(
	id INT PRIMARY KEY IDENTITY,
	date DATETIME,
	customer_id INT,
	address_from_id INT NOT NULL,
	address_to_id INT NOT NULL,
	cost int NOT NULL,
	payment_type NVARCHAR(10) CHECK(payment_type IN ('cash', 'cashless')) NOT NULL,
	status NVARCHAR(15) CHECK(status IN ('accepted', 'in progress', 'done', 'canceled')) NOT NULL,
	car_id INT NOT NULL
)

DROP TABLE IF EXISTS list

CREATE TABLE list
(
	id INT PRIMARY KEY IDENTITY,
	date DATETIME,
	order_id INT NOT NULL,
	status NVARCHAR(15) CHECK(status IN ('accepted', 'in progress', 'done', 'canceled')) NOT NULL
)

INSERT INTO cars(type, brand, number, color, number_of_seats, driver) VALUES(N'freight',N'bugatti', N'E849GQ', N'blue', 7, N'������');
INSERT INTO cars(type, brand, number, color, number_of_seats, driver) VALUES(N'passenger', N'subaru', N'R251DF', N'purple', 3, N'�����');
INSERT INTO cars(type, brand, number, color, number_of_seats, driver) VALUES(N'freight',N'mersedes', N'F861GG', N'orange', 6, N'���������');
INSERT INTO cars(type, brand, number, color, number_of_seats, driver) VALUES(N'passenger', N'volga', N'Z459FW', N'green', 5, N'����');
INSERT INTO cars(type, brand, number, color, number_of_seats, driver) VALUES(N'passenger', N'ferrari', N'G783PJ', N'blue', 5, N'����');
INSERT INTO cars(type, brand, number, color, number_of_seats, driver) VALUES(N'passenger', N'mersedes', N'M568VR', N'blue', 2, N'���������');
INSERT INTO cars(type, brand, number, color, number_of_seats, driver) VALUES(N'freight',N'reno', N'V056CY', N'red', 7, N'���������');
INSERT INTO cars(type, brand, number, color, number_of_seats, driver) VALUES(N'freight',N'mersedes', N'K443ZM', N'red', 4, N'�������');
INSERT INTO cars(type, brand, number, color, number_of_seats, driver) VALUES(N'freight',N'lada', N'K736RS', N'black', 4, N'����');
INSERT INTO cars(type, brand, number, color, number_of_seats, driver) VALUES(N'freight',N'mersedes', N'P048LT', N'purple', 6, N'���������');
INSERT INTO cars(type, brand, number, color, number_of_seats, driver) VALUES(N'freight',N'astom martin', N'Z790OO', N'orange', 7, N'���������');
INSERT INTO cars(type, brand, number, color, number_of_seats, driver) VALUES(N'freight',N'subaru', N'B457VU', N'blue', 2, N'������');
INSERT INTO cars(type, brand, number, color, number_of_seats, driver) VALUES(N'freight',N'ferrari', N'B717YE', N'orange', 3, N'����');
INSERT INTO cars(type, brand, number, color, number_of_seats, driver) VALUES(N'passenger', N'astom martin', N'A818VR', N'purple', 4, N'������');
INSERT INTO cars(type, brand, number, color, number_of_seats, driver) VALUES(N'passenger', N'lada', N'P052NQ', N'silver', 7, N'ϸ��');
INSERT INTO cars(type, brand, number, color, number_of_seats, driver) VALUES(N'passenger', N'astom martin', N'O610OL', N'red', 5, N'��������');
INSERT INTO cars(type, brand, number, color, number_of_seats, driver) VALUES(N'passenger', N'volga', N'X341SM', N'black', 2, N'�������');
INSERT INTO cars(type, brand, number, color, number_of_seats, driver) VALUES(N'passenger', N'bugatti', N'X383KZ', N'green', 3, N'����');
INSERT INTO cars(type, brand, number, color, number_of_seats, driver) VALUES(N'passenger', N'ferrari', N'X015YJ', N'white', 1, N'�������');
INSERT INTO cars(type, brand, number, color, number_of_seats, driver) VALUES(N'passenger', N'ferrari', N'X299UK', N'yellow', 7, N'��������');
INSERT INTO cars(type, brand, number, color, number_of_seats, driver) VALUES(N'passenger', N'bugatti', N'O808NM', N'red', 1, N'�������');
INSERT INTO cars(type, brand, number, color, number_of_seats, driver) VALUES(N'freight',N'volga', N'A227HY', N'blue', 5, N'�������');
INSERT INTO cars(type, brand, number, color, number_of_seats, driver) VALUES(N'freight',N'bugatti', N'T685DC', N'blue', 3, N'������');
INSERT INTO cars(type, brand, number, color, number_of_seats, driver) VALUES(N'passenger', N'lada', N'V356YA', N'blue', 3, N'�������');
INSERT INTO cars(type, brand, number, color, number_of_seats, driver) VALUES(N'freight',N'lada', N'G791JA', N'blue', 2, N'�������');
INSERT INTO cars(type, brand, number, color, number_of_seats, driver) VALUES(N'freight',N'volvo', N'L819VO', N'white', 3, N'��������');
INSERT INTO cars(type, brand, number, color, number_of_seats, driver) VALUES(N'freight',N'astom martin', N'T768PC', N'blue', 7, N'����');
INSERT INTO cars(type, brand, number, color, number_of_seats, driver) VALUES(N'passenger', N'subaru', N'B289ID', N'yellow', 5, N'����');
INSERT INTO cars(type, brand, number, color, number_of_seats, driver) VALUES(N'freight',N'reno', N'V938QL', N'white', 6, N'�������');
INSERT INTO cars(type, brand, number, color, number_of_seats, driver) VALUES(N'passenger', N'volga', N'V539CR', N'purple', 7, N'������');
INSERT INTO cars(type, brand, number, color, number_of_seats, driver) VALUES(N'passenger', N'reno', N'B614UB', N'purple', 7, N'����');
INSERT INTO cars(type, brand, number, color, number_of_seats, driver) VALUES(N'passenger', N'astom martin', N'X528CH', N'purple', 7, N'�������');
INSERT INTO cars(type, brand, number, color, number_of_seats, driver) VALUES(N'passenger', N'reno', N'D926KN', N'yellow', 4, N'����');
INSERT INTO cars(type, brand, number, color, number_of_seats, driver) VALUES(N'passenger', N'ferrari', N'Y439GB', N'red', 7, N'����');
INSERT INTO cars(type, brand, number, color, number_of_seats, driver) VALUES(N'passenger', N'mersedes', N'Z788UC', N'black', 7, N'������');
INSERT INTO cars(type, brand, number, color, number_of_seats, driver) VALUES(N'passenger', N'bugatti', N'K444GU', N'white', 4, N'������');
INSERT INTO cars(type, brand, number, color, number_of_seats, driver) VALUES(N'passenger', N'bugatti', N'Q303NE', N'blue', 7, N'������');
INSERT INTO cars(type, brand, number, color, number_of_seats, driver) VALUES(N'freight',N'mersedes', N'J579SJ', N'silver', 6, N'������');
INSERT INTO cars(type, brand, number, color, number_of_seats, driver) VALUES(N'freight',N'subaru', N'F535CL', N'blue', 3, N'������');
INSERT INTO cars(type, brand, number, color, number_of_seats, driver) VALUES(N'passenger', N'ferrari', N'W430ZW', N'red', 5, N'����');
INSERT INTO cars(type, brand, number, color, number_of_seats, driver) VALUES(N'freight',N'volvo', N'S005NU', N'yellow', 2, N'�������');
INSERT INTO cars(type, brand, number, color, number_of_seats, driver) VALUES(N'passenger', N'maseratti', N'Y612MK', N'pink', 3, N'�����');
INSERT INTO cars(type, brand, number, color, number_of_seats, driver) VALUES(N'passenger', N'ferrari', N'C070MH', N'red', 5, N'������');
INSERT INTO cars(type, brand, number, color, number_of_seats, driver) VALUES(N'passenger', N'maseratti', N'E948FP', N'purple', 5, N'�������');
INSERT INTO cars(type, brand, number, color, number_of_seats, driver) VALUES(N'passenger', N'ferrari', N'Y389RZ', N'blue', 4, N'��������');
INSERT INTO cars(type, brand, number, color, number_of_seats, driver) VALUES(N'passenger', N'bugatti', N'O045DB', N'purple', 5, N'���������');
INSERT INTO cars(type, brand, number, color, number_of_seats, driver) VALUES(N'freight',N'subaru', N'A003PP', N'black', 1, N'�������');
INSERT INTO cars(type, brand, number, color, number_of_seats, driver) VALUES(N'freight',N'reno', N'T883MX', N'orange', 5, N'�������');
INSERT INTO cars(type, brand, number, color, number_of_seats, driver) VALUES(N'passenger', N'volga', N'M747UP', N'pink', 6, N'��������');
INSERT INTO cars(type, brand, number, color, number_of_seats, driver) VALUES(N'freight',N'volvo', N'P054TQ', N'silver', 5, N'�������');
INSERT INTO cars(type, brand, number, color, number_of_seats, driver) VALUES(N'freight',N'volvo', N'X666DZ', N'purple', 2, N'����');
INSERT INTO cars(type, brand, number, color, number_of_seats, driver) VALUES(N'freight',N'volga', N'D272AH', N'purple', 1, N'��������');
INSERT INTO cars(type, brand, number, color, number_of_seats, driver) VALUES(N'passenger', N'volga', N'H629PX', N'pink', 2, N'�����');
INSERT INTO cars(type, brand, number, color, number_of_seats, driver) VALUES(N'passenger', N'ferrari', N'H329HU', N'pink', 2, N'�������');
INSERT INTO cars(type, brand, number, color, number_of_seats, driver) VALUES(N'passenger', N'lada', N'L423QV', N'green', 2, N'�������');
INSERT INTO cars(type, brand, number, color, number_of_seats, driver) VALUES(N'passenger', N'subaru', N'I354OI', N'black', 6, N'��������');
INSERT INTO cars(type, brand, number, color, number_of_seats, driver) VALUES(N'passenger', N'ferrari', N'R636OZ', N'blue', 7, N'��������');
INSERT INTO cars(type, brand, number, color, number_of_seats, driver) VALUES(N'freight',N'mersedes', N'Z225RB', N'orange', 6, N'�������');
INSERT INTO cars(type, brand, number, color, number_of_seats, driver) VALUES(N'freight',N'mersedes', N'A530LI', N'black', 2, N'����');
INSERT INTO cars(type, brand, number, color, number_of_seats, driver) VALUES(N'freight',N'reno', N'H801NP', N'red', 3, N'����');
INSERT INTO cars(type, brand, number, color, number_of_seats, driver) VALUES(N'freight',N'astom martin', N'A401WJ', N'yellow', 3, N'������');
INSERT INTO cars(type, brand, number, color, number_of_seats, driver) VALUES(N'passenger', N'ferrari', N'Q859HN', N'orange', 1, N'�������');
INSERT INTO cars(type, brand, number, color, number_of_seats, driver) VALUES(N'freight',N'bugatti', N'C309FT', N'green', 2, N'�������');
INSERT INTO cars(type, brand, number, color, number_of_seats, driver) VALUES(N'passenger', N'mersedes', N'S921GU', N'black', 7, N'�����');
INSERT INTO cars(type, brand, number, color, number_of_seats, driver) VALUES(N'passenger', N'maseratti', N'J477KC', N'green', 5, N'���������');
INSERT INTO cars(type, brand, number, color, number_of_seats, driver) VALUES(N'passenger', N'volvo', N'B240HT', N'pink', 4, N'�����');
INSERT INTO cars(type, brand, number, color, number_of_seats, driver) VALUES(N'passenger', N'reno', N'I395LW', N'black', 6, N'�����');
INSERT INTO cars(type, brand, number, color, number_of_seats, driver) VALUES(N'passenger', N'subaru', N'W255HC', N'black', 6, N'������');
INSERT INTO cars(type, brand, number, color, number_of_seats, driver) VALUES(N'passenger', N'astom martin', N'C505GB', N'black', 4, N'��������');
INSERT INTO cars(type, brand, number, color, number_of_seats, driver) VALUES(N'passenger', N'reno', N'B307IG', N'pink', 4, N'�������');
INSERT INTO cars(type, brand, number, color, number_of_seats, driver) VALUES(N'freight',N'volga', N'I738BB', N'pink', 3, N'����');
INSERT INTO cars(type, brand, number, color, number_of_seats, driver) VALUES(N'passenger', N'volga', N'F082CB', N'black', 2, N'ϸ��');
INSERT INTO cars(type, brand, number, color, number_of_seats, driver) VALUES(N'passenger', N'volvo', N'B800ZT', N'purple', 1, N'�������');
INSERT INTO cars(type, brand, number, color, number_of_seats, driver) VALUES(N'passenger', N'astom martin', N'H849ZS', N'white', 2, N'���������');
INSERT INTO cars(type, brand, number, color, number_of_seats, driver) VALUES(N'passenger', N'astom martin', N'J551SW', N'white', 5, N'�����');
INSERT INTO cars(type, brand, number, color, number_of_seats, driver) VALUES(N'passenger', N'ferrari', N'E623PU', N'blue', 1, N'���������');
INSERT INTO cars(type, brand, number, color, number_of_seats, driver) VALUES(N'passenger', N'volga', N'L526XI', N'yellow', 7, N'�������');
INSERT INTO cars(type, brand, number, color, number_of_seats, driver) VALUES(N'freight',N'ferrari', N'U862OO', N'yellow', 2, N'���������');
INSERT INTO cars(type, brand, number, color, number_of_seats, driver) VALUES(N'freight',N'subaru', N'M067JN', N'blue', 5, N'����');
INSERT INTO cars(type, brand, number, color, number_of_seats, driver) VALUES(N'passenger', N'maseratti', N'B432UK', N'silver', 5, N'�������');
INSERT INTO cars(type, brand, number, color, number_of_seats, driver) VALUES(N'passenger', N'ferrari', N'U089BT', N'black', 3, N'������');
INSERT INTO cars(type, brand, number, color, number_of_seats, driver) VALUES(N'passenger', N'subaru', N'E936VC', N'green', 7, N'ϸ��');
INSERT INTO cars(type, brand, number, color, number_of_seats, driver) VALUES(N'freight',N'mersedes', N'Z132KU', N'black', 2, N'ϸ��');
INSERT INTO cars(type, brand, number, color, number_of_seats, driver) VALUES(N'passenger', N'subaru', N'D241BZ', N'pink', 7, N'����');
INSERT INTO cars(type, brand, number, color, number_of_seats, driver) VALUES(N'freight',N'lada', N'D841OF', N'white', 5, N'�������');
INSERT INTO cars(type, brand, number, color, number_of_seats, driver) VALUES(N'passenger', N'bugatti', N'L410GJ', N'yellow', 7, N'�������');
INSERT INTO cars(type, brand, number, color, number_of_seats, driver) VALUES(N'freight',N'volga', N'O542MA', N'silver', 2, N'�������');
INSERT INTO cars(type, brand, number, color, number_of_seats, driver) VALUES(N'passenger', N'subaru', N'L809TP', N'black', 3, N'������');
INSERT INTO cars(type, brand, number, color, number_of_seats, driver) VALUES(N'passenger', N'volga', N'R301YJ', N'black', 6, N'�������');
INSERT INTO cars(type, brand, number, color, number_of_seats, driver) VALUES(N'freight',N'subaru', N'X731EN', N'yellow', 4, N'������');
INSERT INTO cars(type, brand, number, color, number_of_seats, driver) VALUES(N'passenger', N'volga', N'Y639YY', N'purple', 7, N'�������');
INSERT INTO cars(type, brand, number, color, number_of_seats, driver) VALUES(N'passenger', N'volga', N'C665PM', N'purple', 2, N'�������');
INSERT INTO cars(type, brand, number, color, number_of_seats, driver) VALUES(N'freight',N'ferrari', N'G121SO', N'white', 4, N'������');
INSERT INTO cars(type, brand, number, color, number_of_seats, driver) VALUES(N'passenger', N'ferrari', N'W132LV', N'black', 2, N'������');
INSERT INTO cars(type, brand, number, color, number_of_seats, driver) VALUES(N'passenger', N'bugatti', N'D406YD', N'silver', 2, N'������');
INSERT INTO cars(type, brand, number, color, number_of_seats, driver) VALUES(N'passenger', N'maseratti', N'D885OG', N'blue', 1, N'������');
INSERT INTO cars(type, brand, number, color, number_of_seats, driver) VALUES(N'passenger', N'lada', N'R925MW', N'black', 6, N'�������');
INSERT INTO cars(type, brand, number, color, number_of_seats, driver) VALUES(N'passenger', N'volga', N'Q326QY', N'blue', 6, N'������');
INSERT INTO cars(type, brand, number, color, number_of_seats, driver) VALUES(N'passenger', N'astom martin', N'K872AN', N'blue', 6, N'�������');
INSERT INTO cars(type, brand, number, color, number_of_seats, driver) VALUES(N'passenger', N'reno', N'A550YM', N'orange', 7, N'����');
INSERT INTO cars(type, brand, number, color, number_of_seats, driver) VALUES(N'passenger', N'bugatti', N'Z906TK', N'black', 6, N'�������');
INSERT INTO cars(type, brand, number, color, number_of_seats, driver) VALUES(N'freight',N'volvo', N'B255UP', N'silver', 5, N'���������');
INSERT INTO cars(type, brand, number, color, number_of_seats, driver) VALUES(N'passenger', N'maseratti', N'X538RY', N'green', 7, N'�������');
INSERT INTO cars(type, brand, number, color, number_of_seats, driver) VALUES(N'passenger', N'ferrari', N'R274VM', N'silver', 6, N'����');
INSERT INTO cars(type, brand, number, color, number_of_seats, driver) VALUES(N'freight',N'mersedes', N'I705HK', N'orange', 5, N'����');
INSERT INTO cars(type, brand, number, color, number_of_seats, driver) VALUES(N'passenger', N'ferrari', N'Z559BG', N'silver', 7, N'��������');
INSERT INTO cars(type, brand, number, color, number_of_seats, driver) VALUES(N'passenger', N'volvo', N'R251SY', N'blue', 5, N'�������');
INSERT INTO cars(type, brand, number, color, number_of_seats, driver) VALUES(N'passenger', N'maseratti', N'H940JG', N'green', 3, N'����');
INSERT INTO cars(type, brand, number, color, number_of_seats, driver) VALUES(N'passenger', N'astom martin', N'J506TJ', N'silver', 4, N'����');
INSERT INTO cars(type, brand, number, color, number_of_seats, driver) VALUES(N'passenger', N'volga', N'Y193NK', N'black', 3, N'���������');
INSERT INTO cars(type, brand, number, color, number_of_seats, driver) VALUES(N'passenger', N'maseratti', N'W094WO', N'blue', 3, N'�������');
INSERT INTO cars(type, brand, number, color, number_of_seats, driver) VALUES(N'passenger', N'ferrari', N'E405EM', N'green', 6, N'�������');
INSERT INTO cars(type, brand, number, color, number_of_seats, driver) VALUES(N'passenger', N'volga', N'A304JV', N'green', 5, N'������');
INSERT INTO cars(type, brand, number, color, number_of_seats, driver) VALUES(N'passenger', N'lada', N'K587MK', N'pink', 7, N'������');
INSERT INTO cars(type, brand, number, color, number_of_seats, driver) VALUES(N'passenger', N'maseratti', N'G665WD', N'orange', 4, N'�������');
INSERT INTO cars(type, brand, number, color, number_of_seats, driver) VALUES(N'freight',N'maseratti', N'D231PI', N'purple', 3, N'ϸ��');
INSERT INTO cars(type, brand, number, color, number_of_seats, driver) VALUES(N'passenger', N'reno', N'O210IW', N'red', 1, N'�����');
INSERT INTO cars(type, brand, number, color, number_of_seats, driver) VALUES(N'passenger', N'bugatti', N'Y874VF', N'green', 4, N'��������');
INSERT INTO cars(type, brand, number, color, number_of_seats, driver) VALUES(N'passenger', N'bugatti', N'D327LU', N'black', 2, N'ϸ��');
INSERT INTO cars(type, brand, number, color, number_of_seats, driver) VALUES(N'passenger', N'lada', N'M013BF', N'green', 5, N'����');
INSERT INTO cars(type, brand, number, color, number_of_seats, driver) VALUES(N'freight',N'ferrari', N'H375FJ', N'silver', 7, N'������');
INSERT INTO cars(type, brand, number, color, number_of_seats, driver) VALUES(N'freight',N'subaru', N'M207DY', N'green', 1, N'��������');
INSERT INTO cars(type, brand, number, color, number_of_seats, driver) VALUES(N'passenger', N'mersedes', N'G279HR', N'blue', 6, N'���������');
INSERT INTO cars(type, brand, number, color, number_of_seats, driver) VALUES(N'passenger', N'volvo', N'R038JC', N'purple', 6, N'������');
INSERT INTO cars(type, brand, number, color, number_of_seats, driver) VALUES(N'freight',N'lada', N'J738RA', N'black', 6, N'����');
INSERT INTO cars(type, brand, number, color, number_of_seats, driver) VALUES(N'freight',N'ferrari', N'H631OI', N'black', 2, N'�������');
INSERT INTO cars(type, brand, number, color, number_of_seats, driver) VALUES(N'passenger', N'astom martin', N'W003IU', N'black', 2, N'����');
INSERT INTO cars(type, brand, number, color, number_of_seats, driver) VALUES(N'freight',N'maseratti', N'C279YT', N'black', 2, N'����');
INSERT INTO cars(type, brand, number, color, number_of_seats, driver) VALUES(N'passenger', N'ferrari', N'G527WE', N'silver', 5, N'��������');
INSERT INTO cars(type, brand, number, color, number_of_seats, driver) VALUES(N'passenger', N'astom martin', N'H820HJ', N'green', 3, N'����');
INSERT INTO cars(type, brand, number, color, number_of_seats, driver) VALUES(N'freight',N'volvo', N'K097GQ', N'green', 2, N'�������');
INSERT INTO cars(type, brand, number, color, number_of_seats, driver) VALUES(N'passenger', N'volga', N'Q328HJ', N'green', 7, N'������');
INSERT INTO cars(type, brand, number, color, number_of_seats, driver) VALUES(N'freight',N'bugatti', N'C150RD', N'red', 5, N'�������');
INSERT INTO cars(type, brand, number, color, number_of_seats, driver) VALUES(N'passenger', N'subaru', N'U703VV', N'purple', 2, N'������');
INSERT INTO cars(type, brand, number, color, number_of_seats, driver) VALUES(N'passenger', N'volga', N'Y499VI', N'red', 3, N'�������');
INSERT INTO cars(type, brand, number, color, number_of_seats, driver) VALUES(N'passenger', N'bugatti', N'U467ER', N'green', 1, N'��������');
INSERT INTO cars(type, brand, number, color, number_of_seats, driver) VALUES(N'passenger', N'volvo', N'L226RP', N'silver', 3, N'������');
INSERT INTO cars(type, brand, number, color, number_of_seats, driver) VALUES(N'passenger', N'volvo', N'U069KX', N'blue', 3, N'�����');
INSERT INTO cars(type, brand, number, color, number_of_seats, driver) VALUES(N'freight',N'bugatti', N'N921MC', N'black', 3, N'��������');
INSERT INTO cars(type, brand, number, color, number_of_seats, driver) VALUES(N'passenger', N'maseratti', N'R898AK', N'red', 1, N'����');
INSERT INTO cars(type, brand, number, color, number_of_seats, driver) VALUES(N'freight',N'astom martin', N'R493CA', N'pink', 1, N'������');
INSERT INTO cars(type, brand, number, color, number_of_seats, driver) VALUES(N'passenger', N'volga', N'E315CA', N'black', 3, N'���������');
INSERT INTO cars(type, brand, number, color, number_of_seats, driver) VALUES(N'passenger', N'maseratti', N'J469XN', N'white', 2, N'���������');
INSERT INTO cars(type, brand, number, color, number_of_seats, driver) VALUES(N'passenger', N'subaru', N'C207NN', N'green', 3, N'���������');
INSERT INTO cars(type, brand, number, color, number_of_seats, driver) VALUES(N'freight',N'astom martin', N'Z570WR', N'pink', 1, N'�������');
INSERT INTO cars(type, brand, number, color, number_of_seats, driver) VALUES(N'passenger', N'lada', N'X057JW', N'white', 6, N'����');
INSERT INTO cars(type, brand, number, color, number_of_seats, driver) VALUES(N'passenger', N'astom martin', N'N627SK', N'blue', 4, N'������');
INSERT INTO cars(type, brand, number, color, number_of_seats, driver) VALUES(N'freight',N'subaru', N'V819XD', N'orange', 3, N'���������');
INSERT INTO cars(type, brand, number, color, number_of_seats, driver) VALUES(N'passenger', N'volga', N'A566CD', N'silver', 3, N'����');
INSERT INTO cars(type, brand, number, color, number_of_seats, driver) VALUES(N'passenger', N'lada', N'B521TX', N'purple', 3, N'��������');
INSERT INTO cars(type, brand, number, color, number_of_seats, driver) VALUES(N'passenger', N'subaru', N'J847PV', N'purple', 4, N'�������');
INSERT INTO cars(type, brand, number, color, number_of_seats, driver) VALUES(N'passenger', N'ferrari', N'P835GX', N'blue', 2, N'�������');
INSERT INTO cars(type, brand, number, color, number_of_seats, driver) VALUES(N'passenger', N'lada', N'Z591HC', N'purple', 4, N'��������');
INSERT INTO cars(type, brand, number, color, number_of_seats, driver) VALUES(N'passenger', N'mersedes', N'V713QM', N'red', 3, N'������');
INSERT INTO cars(type, brand, number, color, number_of_seats, driver) VALUES(N'freight',N'volga', N'G716GX', N'green', 7, N'������');
INSERT INTO cars(type, brand, number, color, number_of_seats, driver) VALUES(N'freight',N'volga', N'U381ZM', N'black', 2, N'���������');
INSERT INTO cars(type, brand, number, color, number_of_seats, driver) VALUES(N'freight',N'maseratti', N'U940FQ', N'white', 2, N'����');
INSERT INTO cars(type, brand, number, color, number_of_seats, driver) VALUES(N'passenger', N'bugatti', N'G684ML', N'orange', 7, N'������');
INSERT INTO cars(type, brand, number, color, number_of_seats, driver) VALUES(N'passenger', N'astom martin', N'F100LE', N'yellow', 3, N'�������');
INSERT INTO cars(type, brand, number, color, number_of_seats, driver) VALUES(N'freight',N'subaru', N'S764PN', N'orange', 5, N'���������');
INSERT INTO cars(type, brand, number, color, number_of_seats, driver) VALUES(N'freight',N'subaru', N'C175NY', N'orange', 1, N'ϸ��');
INSERT INTO cars(type, brand, number, color, number_of_seats, driver) VALUES(N'freight',N'mersedes', N'X887WI', N'white', 1, N'��������');
INSERT INTO cars(type, brand, number, color, number_of_seats, driver) VALUES(N'passenger', N'ferrari', N'K173XP', N'orange', 7, N'����');
INSERT INTO cars(type, brand, number, color, number_of_seats, driver) VALUES(N'passenger', N'ferrari', N'K141FL', N'purple', 3, N'��������');
INSERT INTO cars(type, brand, number, color, number_of_seats, driver) VALUES(N'passenger', N'volvo', N'B831WM', N'purple', 5, N'ϸ��');
INSERT INTO cars(type, brand, number, color, number_of_seats, driver) VALUES(N'freight',N'subaru', N'M393PL', N'yellow', 6, N'������');
INSERT INTO cars(type, brand, number, color, number_of_seats, driver) VALUES(N'freight',N'astom martin', N'E155GS', N'white', 1, N'������');
INSERT INTO cars(type, brand, number, color, number_of_seats, driver) VALUES(N'freight',N'astom martin', N'U252RO', N'purple', 4, N'������');
INSERT INTO cars(type, brand, number, color, number_of_seats, driver) VALUES(N'passenger', N'volvo', N'S038MK', N'silver', 1, N'����');
INSERT INTO cars(type, brand, number, color, number_of_seats, driver) VALUES(N'freight',N'astom martin', N'H657AW', N'black', 1, N'ϸ��');
INSERT INTO cars(type, brand, number, color, number_of_seats, driver) VALUES(N'passenger', N'maseratti', N'Q562VB', N'pink', 1, N'��������');
INSERT INTO cars(type, brand, number, color, number_of_seats, driver) VALUES(N'freight',N'reno', N'W478SS', N'red', 4, N'�������');
INSERT INTO cars(type, brand, number, color, number_of_seats, driver) VALUES(N'passenger', N'astom martin', N'N599UZ', N'green', 2, N'������');
INSERT INTO cars(type, brand, number, color, number_of_seats, driver) VALUES(N'passenger', N'mersedes', N'G332XX', N'silver', 1, N'�����');
INSERT INTO cars(type, brand, number, color, number_of_seats, driver) VALUES(N'passenger', N'volga', N'N509OI', N'silver', 5, N'���������');
INSERT INTO cars(type, brand, number, color, number_of_seats, driver) VALUES(N'passenger', N'mersedes', N'V080JO', N'yellow', 4, N'������');
INSERT INTO cars(type, brand, number, color, number_of_seats, driver) VALUES(N'passenger', N'volga', N'L269MJ', N'orange', 2, N'����');
INSERT INTO cars(type, brand, number, color, number_of_seats, driver) VALUES(N'passenger', N'astom martin', N'D520DT', N'yellow', 6, N'�������');
INSERT INTO cars(type, brand, number, color, number_of_seats, driver) VALUES(N'passenger', N'ferrari', N'W758BP', N'black', 5, N'������');
INSERT INTO cars(type, brand, number, color, number_of_seats, driver) VALUES(N'passenger', N'lada', N'L403TO', N'orange', 5, N'������');
INSERT INTO cars(type, brand, number, color, number_of_seats, driver) VALUES(N'freight',N'mersedes', N'T151DZ', N'red', 6, N'��������');
INSERT INTO cars(type, brand, number, color, number_of_seats, driver) VALUES(N'freight',N'reno', N'R835FF', N'blue', 6, N'������');
INSERT INTO cars(type, brand, number, color, number_of_seats, driver) VALUES(N'freight',N'bugatti', N'O904MN', N'silver', 4, N'������');
INSERT INTO cars(type, brand, number, color, number_of_seats, driver) VALUES(N'passenger', N'ferrari', N'K433QB', N'purple', 4, N'������');
INSERT INTO cars(type, brand, number, color, number_of_seats, driver) VALUES(N'passenger', N'maseratti', N'H538BE', N'white', 1, N'�����');
INSERT INTO cars(type, brand, number, color, number_of_seats, driver) VALUES(N'passenger', N'bugatti', N'A532SI', N'green', 5, N'���������');
INSERT INTO cars(type, brand, number, color, number_of_seats, driver) VALUES(N'passenger', N'astom martin', N'N421BQ', N'white', 7, N'�������');
INSERT INTO cars(type, brand, number, color, number_of_seats, driver) VALUES(N'passenger', N'astom martin', N'Z798XQ', N'green', 5, N'�������');
INSERT INTO cars(type, brand, number, color, number_of_seats, driver) VALUES(N'freight',N'subaru', N'F506AF', N'silver', 5, N'�������');
INSERT INTO cars(type, brand, number, color, number_of_seats, driver) VALUES(N'freight',N'maseratti', N'K409XL', N'green', 3, N'�������');
INSERT INTO cars(type, brand, number, color, number_of_seats, driver) VALUES(N'freight',N'volga', N'R313LV', N'purple', 7, N'�������');
INSERT INTO cars(type, brand, number, color, number_of_seats, driver) VALUES(N'passenger', N'lada', N'P159XK', N'purple', 1, N'�������');
INSERT INTO cars(type, brand, number, color, number_of_seats, driver) VALUES(N'passenger', N'subaru', N'E331IL', N'pink', 7, N'������');
INSERT INTO cars(type, brand, number, color, number_of_seats, driver) VALUES(N'passenger', N'reno', N'F716BZ', N'red', 4, N'������');
INSERT INTO cars(type, brand, number, color, number_of_seats, driver) VALUES(N'freight',N'astom martin', N'T027OG', N'yellow', 1, N'��������');
INSERT INTO cars(type, brand, number, color, number_of_seats, driver) VALUES(N'freight',N'astom martin', N'J188GY', N'orange', 2, N'�������');
INSERT INTO cars(type, brand, number, color, number_of_seats, driver) VALUES(N'passenger', N'reno', N'L972TL', N'purple', 5, N'ϸ��');
INSERT INTO cars(type, brand, number, color, number_of_seats, driver) VALUES(N'freight',N'volvo', N'N567UE', N'blue', 3, N'�������');
INSERT INTO cars(type, brand, number, color, number_of_seats, driver) VALUES(N'passenger', N'subaru', N'N831KJ', N'red', 7, N'������');
INSERT INTO cars(type, brand, number, color, number_of_seats, driver) VALUES(N'freight',N'mersedes', N'O092HT', N'black', 2, N'����');
