/* Gabriela Pedreros - gp21j */
CREATE DATABASE project;

CREATE TABLE Property(
 					address VARCHAR(50) NOT NULL,
					ownerName VARCHAR(30),
					price INT,
					PRIMARY KEY(address)
					);

CREATE TABLE House(
					address VARCHAR(50) NOT NULL,
					ownerName VARCHAR(30),
					price INT,
					bedrooms INT,
					bathrooms INT,
					size INT,
					FOREIGN KEY(address) REFERENCES Property(address)
				);

CREATE TABLE BusinessProperty(
					address VARCHAR(50) NOT NULL,
					ownerName VARCHAR(30),
					price INT,
					type CHAR(20),
					size INT,
					FOREIGN KEY(address) REFERENCES Property(address)
				);

CREATE TABLE Firm(
					id INT NOT NULL,
					name VARCHAR(30),
					address VARCHAR(50),
					PRIMARY KEY(id)
				);

CREATE TABLE Agent(
					agentId INT NOT NULL,
					name VARCHAR(30),
					phone CHAR(12),
					firmId INT NOT NULL,
					dateStarted DATE,
					PRIMARY KEY(agentId),
					FOREIGN KEY(firmId) REFERENCES Firm(id)
				);

CREATE TABLE Listing(
					address VARCHAR(50),
					agentId INT,
					mlsNumber INT PRIMARY KEY,
					dataListed DATE,
					FOREIGN KEY(agentId) REFERENCES Agent(agentId),
 					FOREIGN KEY(address) REFERENCES Property(address)
					);

CREATE TABLE Buyer(
					id INT NOT NULL,
					name VARCHAR(30),
					phone CHAR(12),
					propertyType CHAR(20),
					bedrooms INT,
 					bathrooms INT,
 					businessPropertyType CHAR(20),
					minimumPreferredPrice INT,
					maximumPreferredPrice INT,
					PRIMARY KEY(id)
				);

CREATE TABLE Work_With(
					buyerId INT,
					agentId INT,
					FOREIGN KEY(buyerId) REFERENCES Buyer(id),
					FOREIGN KEY(agentId) REFERENCES Agent(agentId)
				);


INSERT INTO Property VALUES('345 Park Avenue', 'Nathalia Palacios', 500000);

INSERT INTO Property VALUES('498 Abbey Road', 'Alejandro Valenzuela', 430000);

INSERT INTO Property VALUES('222 Oxford Street', 'Moshe Manning', 1000000);

INSERT INTO Property VALUES('132 Pudding Lane', 'Sloane Jacobs', 650000);

INSERT INTO Property VALUES('567 Downing Street', 'Theodore Morales', 740000);

INSERT INTO Property VALUES('389 Fleet Street', 'Jimmey Kimmel', 50000); 

INSERT INTO Property VALUES('2947 Baker Street', 'Jimmey Fallon', 100000);

INSERT INTO Property VALUES('777 Kings Road', 'Jordan Travis', 80000);

INSERT INTO Property VALUES('567 Piccadilly', 'Blake Lively', 120000);

INSERT INTO Property VALUES('263 Bond Street', 'Taylor Swift', 40000000);

INSERT INTO Property VALUES('199 Full House Drive', 'John Stamos', 200000);

INSERT INTO House VALUES('345 Park Avenue', 'Nathalia Palacios', 500000, 3, 3, 192);

INSERT INTO House VALUES('498 Abbey Road', 'Alejandro Valenzuela', 430000, 3, 2, 187);

INSERT INTO House VALUES('222 Oxford Street', 'Moshe Manning', 1000000, 7, 5, 401);

INSERT INTO House VALUES('132 Pudding Lane', 'Sloane Jacobs', 650000, 5, 5, 298);

INSERT INTO House VALUES('567 Downing Street', 'Theodore Morales', 740000, 6, 5, 340);

INSERT INTO House VALUES('199 Full House Drive', 'John Stamos', 200000, 3, 2, 100);

INSERT INTO BusinessProperty VALUES('389 Fleet Street', 'Jimmey Kimmel', 50000, 'gas station', 200);

INSERT INTO BusinessProperty VALUES('2947 Baker Street', 'Jimmey Fallon', 100000, 'office space', 130);

INSERT INTO BusinessProperty VALUES('777 Kings Road', 'Jordan Travis', 80000, 'store front', 300);

INSERT INTO BusinessProperty VALUES('567 Piccadilly', 'Blake Lively', 120000, 'office space', 140);

INSERT INTO BusinessProperty VALUES('263 Bond Street', 'Taylor Swift', 40000000, 'airport', 15000);


INSERT INTO Firm VALUES(1250, 'Selling Sunset', '199 Academic Way');

INSERT INTO Firm VALUES(1836, 'Florida Houses', '369 Colombia Street');

INSERT INTO Firm VALUES(1926, 'New York Properties', '837 Jermyn Street');

INSERT INTO Firm VALUES(19290, 'Corner Stone Estates', '930 Knightsbridge');

INSERT INTO Firm VALUES(1357, 'Stars Hollow Homes', '208 Fairmount Road');

INSERT INTO Agent VALUES(101, 'Ryan Reynolds', '456787654', 1250, '2023-12-03');

INSERT INTO Agent VALUES(102, 'Ryan Gosling', '234567892', 1250, '2024-01-01');

INSERT INTO Agent VALUES(201, 'Mila Kunis', '947863245', 1836, '2016-07-08');

INSERT INTO Agent VALUES(202, 'Ashton Kutcher', '908765436', 1836, '2017-11-09');

INSERT INTO Agent VALUES(301, 'Jennifer Lawrence', '690432678', 1926, '2019-12-26');

INSERT INTO Agent VALUES(302, 'Josh Hutcherson', '787654326', 1926, '2020-09-29');

INSERT INTO Agent VALUES(401, 'Chris Pratt', '345678956', 19290, '2021-04-30');

INSERT INTO Agent VALUES(402, 'Chris Hemsworth', '896543267', 19290, '2003-05-15');

INSERT INTO Agent VALUES(501, 'Margot Robbie', '923754679', 1357, '2004-07-14');

INSERT INTO Agent VALUES(502, 'Emma Stone', '981234567', 1357, '2008-08-27');

INSERT INTO Listing VALUES('345 Park Avenue', 101, 1890, '2023-03-07');

INSERT INTO Listing VALUES('498 Abbey Road', 102, 2390, '2023-06-25');

INSERT INTO Listing VALUES('222 Oxford Street', 201, 3550, '2023-03-18');

INSERT INTO Listing VALUES('132 Pudding Lane', 202, 4000, '2023-02-13');

INSERT INTO Listing VALUES('567 Downing Street', 301, 4567, '2023-09-20');

INSERT INTO Listing VALUES('389 Fleet Street', 302, 4987, '2023-10-12');

INSERT INTO Listing VALUES('2947 Baker Street', 401, 5111, '2023-06-19');

INSERT INTO Listing VALUES('777 Kings Road', 402, 5447, '2023-09-20');

INSERT INTO Listing VALUES('567 Piccadilly', 501, 5789, '2023-06-21');

INSERT INTO Listing VALUES('263 Bond Street', 502, 6100, '2023-03-22');

INSERT INTO Listing VALUES('199 Full House Drive', 101, 4598, '2004-06-05');



INSERT INTO Buyer VALUES(278, 'Matthew Perry', '567894823', 'house', 7, 5, 'not applied', 750000, 1000001);

INSERT INTO Buyer VALUES(789, 'Jennifer Aniston', '789654321', 'house', 6, 4, 'not applied', 740000, 800000);

INSERT INTO Buyer VALUES(123, 'Courtney Cox', '243797435', 'house', 3, 3, 'not applied', 420000, 520000);

INSERT INTO Buyer VALUES(457, 'Matt LeBlanc', '897658492', 'not applied', 6, 5, 'gas station', 600000, 760000);

INSERT INTO Buyer VALUES(689, 'David Schwimmer', '457904326', 'not applied', 10, 5, 'office space', 100000, 150000);


INSERT INTO Work_With VALUES(123, 101);

INSERT INTO Work_With VALUES(278, 201);

INSERT INTO Work_With VALUES(457, 302);

INSERT INTO Work_With VALUES(689, 501);

INSERT INTO Work_With VALUES(789, 301);
