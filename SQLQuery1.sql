/*CREATE TABLE BOB(
	id int NOT NULL,
	name nvarchar(20) NOT NULL,
	width int

	PRIMARY KEY(id)
);*/

/*IF EXISTS (SELECT * FROM sysobjects
WHERE name = 'BOB' AND xtype = 'U')
SELECT * FROM BOB;*/
/*IF NOT EXISTS (SELECT * FROM sysobjects WHERE name = 'DADADA' AND xtype = 'U')
CREATE TABLE DADADA (
	id int IDENTITY(1,1) NOT NULL,
	name nvarchar(50) NOT NULL,
	price money,
	po nvarchar(20) NOT NULL,
	diagonal float NOT NULL,
	tech nvarchar(20) NOT NULL,
	gers int NOT NULL,
	ozy int NOT NULL,
	memory int NOT NULL,
	camera int NOT NULL,
	battary int NOT NULL,
	color nvarchar(20)
	PRIMARY KEY(id)
);

INSERT INTO DADADA
VAlUES ('iphone', 1000, 'apple', 5.1, 'AMOLED', 120, 16, 512, 108, 1000, 'black');
SELECT * FROM DADADA

DROP TABLE IF EXISTS BOB*/

IF NOT EXISTS (SELECT * FROM sysobjects WHERE name = 'BOOKES' AND xtype = 'U')
CREATE TABLE BOOKES(
	id int IDENTITY(1,1) NOT NULL,
	name nvarchar(50) NOT NULL,
	author nvarchar(50),
	izdatelstvo nvarchar(50) NOT NULL,
	stranis int NOT NULL,
	pereplet nvarchar(20) NOT NULL,
	genre nvarchar(20) NOT NULL,
	price money NOT NULL,
	copies int NOT NULL,
	yeard int
	PRIMARY KEY(id),
	UNIQUE (name)
);

/*INSERT INTO BOOKES
VAlUES ('Батя ушел', 'Вельдам','Bellcorp', 1, 'Твердая', 'ужасы', 250, 500000, 2022);
SELECT * FROM BOOKES*/
SELECT * FROM BOOKES

SELECT name  AS название,
	author AS автор,
	stranis AS страниц,
	price AS цена
FROM BOOKES
WHERE stranis > 150  AND price < 1400;