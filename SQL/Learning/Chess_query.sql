USE Chess;

--DROP TABLE Chessboard
--DROP TABLE Chessboard2
--DROP TABLE Chessmen

--CREATE TABLE Chessmen(
--fId    int,
--fType  nchar(6)    not null,
--fColor nvarchar(6) not null,
--constraint PK_Chessman primary key (fId),
--constraint CK_Chessman_type check (fType = N'king'   or 
--								   fType = N'queen'  or 
--								   fType = N'rook'   or 
--								   fType = N'bishop' or 
--								   fType = N'knight' or 
--								   fType = N'pawn'     ),
--constraint CK_Chessman_color check (fColor = N'black' or fColor = N'white')
--);

--CREATE TABLE Chessboard(
--fId int,
--x nchar not null,
--y nchar not null,
--constraint CK_Chessboard_x check (x like N'[A-H]'),
--constraint CK_Chessboard_y check (y like N'[1-8]'),
--constraint FK_Chessboard_id foreign key (fId) references Chessmen (fId) on delete cascade,
--constraint PK_Chessboard primary key (fId),
--constraint UNIQ_Chessboard unique (x,y)
--);

USE Chess
--GO
--INSERT [dbo].[Chessmen] ([fId], [fColor], [fType]) VALUES (1, N'white', N'pawn  ')
--GO
--INSERT [dbo].[Chessmen] ([fId], [fColor], [fType]) VALUES (2, N'white', N'pawn  ')
--GO
--INSERT [dbo].[Chessmen] ([fId], [fColor], [fType]) VALUES (3, N'white', N'pawn  ')
--GO
--INSERT [dbo].[Chessmen] ([fId], [fColor], [fType]) VALUES (4, N'white', N'pawn  ')
--GO
--INSERT [dbo].[Chessmen] ([fId], [fColor], [fType]) VALUES (5, N'white', N'pawn  ')
--GO
--INSERT [dbo].[Chessmen] ([fId], [fColor], [fType]) VALUES (6, N'white', N'pawn  ')
--GO
--INSERT [dbo].[Chessmen] ([fId], [fColor], [fType]) VALUES (7, N'white', N'pawn  ')
--GO
--INSERT [dbo].[Chessmen] ([fId], [fColor], [fType]) VALUES (8, N'white', N'pawn  ')
--GO
--INSERT [dbo].[Chessmen] ([fId], [fColor], [fType]) VALUES (9, N'white', N'knight')
--GO
--INSERT [dbo].[Chessmen] ([fId], [fColor], [fType]) VALUES (10, N'white', N'knight')
--GO
--INSERT [dbo].[Chessmen] ([fId], [fColor], [fType]) VALUES (11, N'white', N'bishop')
--GO
--INSERT [dbo].[Chessmen] ([fId], [fColor], [fType]) VALUES (12, N'white', N'bishop')
--GO
--INSERT [dbo].[Chessmen] ([fId], [fColor], [fType]) VALUES (13, N'white', N'rook  ')
--GO
--INSERT [dbo].[Chessmen] ([fId], [fColor], [fType]) VALUES (14, N'white', N'rook  ')
--GO
--INSERT [dbo].[Chessmen] ([fId], [fColor], [fType]) VALUES (15, N'white', N'queen ')
--GO
--INSERT [dbo].[Chessmen] ([fId], [fColor], [fType]) VALUES (16, N'white', N'king  ')
--GO
--INSERT [dbo].[Chessmen] ([fId], [fColor], [fType]) VALUES (17, N'black', N'pawn  ')
--GO
--INSERT [dbo].[Chessmen] ([fId], [fColor], [fType]) VALUES (18, N'black', N'pawn  ')
--GO
--INSERT [dbo].[Chessmen] ([fId], [fColor], [fType]) VALUES (19, N'black', N'pawn  ')
--GO
--INSERT [dbo].[Chessmen] ([fId], [fColor], [fType]) VALUES (20, N'black', N'pawn  ')
--GO
--INSERT [dbo].[Chessmen] ([fId], [fColor], [fType]) VALUES (21, N'black', N'pawn  ')
--GO
--INSERT [dbo].[Chessmen] ([fId], [fColor], [fType]) VALUES (22, N'black', N'pawn  ')
--GO
--INSERT [dbo].[Chessmen] ([fId], [fColor], [fType]) VALUES (23, N'black', N'pawn  ')
--GO
--INSERT [dbo].[Chessmen] ([fId], [fColor], [fType]) VALUES (24, N'black', N'pawn  ')
--GO
--INSERT [dbo].[Chessmen] ([fId], [fColor], [fType]) VALUES (25, N'black', N'knight')
--GO
--INSERT [dbo].[Chessmen] ([fId], [fColor], [fType]) VALUES (26, N'black', N'knight')
--GO
--INSERT [dbo].[Chessmen] ([fId], [fColor], [fType]) VALUES (27, N'black', N'bishop')
--GO
--INSERT [dbo].[Chessmen] ([fId], [fColor], [fType]) VALUES (28, N'black', N'bishop')
--GO
--INSERT [dbo].[Chessmen] ([fId], [fColor], [fType]) VALUES (29, N'black', N'rook  ')
--GO
--INSERT [dbo].[Chessmen] ([fId], [fColor], [fType]) VALUES (30, N'black', N'rook  ')
--GO
--INSERT [dbo].[Chessmen] ([fId], [fColor], [fType]) VALUES (31, N'black', N'queen ')
--GO
--INSERT [dbo].[Chessmen] ([fId], [fColor], [fType]) VALUES (32, N'black', N'king  ')
--GO
;
DELETE FROM Chessboard
GO
INSERT [dbo].[Chessboard] ([fId], [x], [y]) VALUES (1, N'A', N'2')
GO
INSERT [dbo].[Chessboard] ([fId], [x], [y]) VALUES (2, N'B', N'2')
GO
INSERT [dbo].[Chessboard] ([fId], [x], [y]) VALUES (3, N'C', N'2')
GO
INSERT [dbo].[Chessboard] ([fId], [x], [y]) VALUES (4, N'D', N'2')
GO
INSERT [dbo].[Chessboard] ([fId], [x], [y]) VALUES (5, N'E', N'2')
GO
INSERT [dbo].[Chessboard] ([fId], [x], [y]) VALUES (6, N'F', N'2')
GO
INSERT [dbo].[Chessboard] ([fId], [x], [y]) VALUES (7, N'G', N'2')
GO
INSERT [dbo].[Chessboard] ([fId], [x], [y]) VALUES (8, N'H', N'2')
GO
INSERT [dbo].[Chessboard] ([fId], [x], [y]) VALUES (9, N'B', N'1')
GO
INSERT [dbo].[Chessboard] ([fId], [x], [y]) VALUES (10, N'G', N'1')
GO
INSERT [dbo].[Chessboard] ([fId], [x], [y]) VALUES (11, N'C', N'1')
GO
INSERT [dbo].[Chessboard] ([fId], [x], [y]) VALUES (12, N'F', N'1')
GO
INSERT [dbo].[Chessboard] ([fId], [x], [y]) VALUES (13, N'A', N'1')
GO
INSERT [dbo].[Chessboard] ([fId], [x], [y]) VALUES (14, N'H', N'1')
GO
INSERT [dbo].[Chessboard] ([fId], [x], [y]) VALUES (15, N'E', N'1')
GO
INSERT [dbo].[Chessboard] ([fId], [x], [y]) VALUES (16, N'D', N'1')
GO
INSERT [dbo].[Chessboard] ([fId], [x], [y]) VALUES (17, N'A', N'7')
GO
INSERT [dbo].[Chessboard] ([fId], [x], [y]) VALUES (18, N'B', N'7')
GO
INSERT [dbo].[Chessboard] ([fId], [x], [y]) VALUES (19, N'C', N'7')
GO
INSERT [dbo].[Chessboard] ([fId], [x], [y]) VALUES (20, N'D', N'7')
GO
INSERT [dbo].[Chessboard] ([fId], [x], [y]) VALUES (21, N'E', N'7')
GO
INSERT [dbo].[Chessboard] ([fId], [x], [y]) VALUES (22, N'F', N'7')
GO
INSERT [dbo].[Chessboard] ([fId], [x], [y]) VALUES (23, N'G', N'7')
GO
INSERT [dbo].[Chessboard] ([fId], [x], [y]) VALUES (24, N'H', N'7')
GO
INSERT [dbo].[Chessboard] ([fId], [x], [y]) VALUES (25, N'B', N'8')
GO
INSERT [dbo].[Chessboard] ([fId], [x], [y]) VALUES (26, N'G', N'8')
GO
INSERT [dbo].[Chessboard] ([fId], [x], [y]) VALUES (27, N'C', N'8')
GO
INSERT [dbo].[Chessboard] ([fId], [x], [y]) VALUES (28, N'F', N'8')
GO
INSERT [dbo].[Chessboard] ([fId], [x], [y]) VALUES (29, N'A', N'8')
GO
INSERT [dbo].[Chessboard] ([fId], [x], [y]) VALUES (30, N'H', N'8')
GO
INSERT [dbo].[Chessboard] ([fId], [x], [y]) VALUES (31, N'D', N'8')
GO
INSERT [dbo].[Chessboard] ([fId], [x], [y]) VALUES (32, N'E', N'8')
GO

USE Chess
--Сколько фигур стоит на доске? Вывести количество.
SELECT COUNT(*) AS COUNT
FROM Chessmen;

GO

SELECT *
FROM Chessmen

--Вывести id фигур, чьи названия начинаются на букву k.
SELECT fid, fType
FROM Chessmen
WHERE fType LIKE 'k%';

GO

--Какие типы фигур бывают и по сколько штук? Вывести тип и количество.
SELECT DISTINCT fType, COUNT(*) as Count
FROM Chessmen
GROUP BY fType

GO

--Вывести id белых пешек , стоящих на доске!!!!!!!!!!!!
SELECT fid
FROM Chessmen
WHERE fColor = 'white' AND fType = 'pawn'

GO

--Какие фигуры стоят на главной диагонали? Вывести их тип и цвет.
SELECT fType, fColor, x, y
FROM Chessboard JOIN Chessmen
ON Chessboard.fid = Chessmen.fid AND (ASCII(x) - ASCII(y) = ASCII('A') - ASCII('1'))

GO

--Найдите общее количество фигур, оставшихся у каждого игрока. Вывести цвет и количество.
SELECT fColor, COUNT(*) as Count
FROM Chessmen, Chessboard
WHERE (Chessmen.fid = Chessboard.fid) AND EXISTS
(SELECT * FROM Chessboard)
GROUP BY fColor

GO

SELECT COUNT(*) AS white
FROM Chessmen, Chessboard
WHERE (Chessmen.fid = Chessboard.fid) AND EXISTS
(SELECT * FROM Chessboard) AND fColor = 'white'

GO

SELECT COUNT(*) AS black
FROM Chessmen, Chessboard
WHERE (Chessmen.fid = Chessboard.fid) AND EXISTS
(SELECT * FROM Chessboard) AND fColor = 'black'

GO

--Какие фигуры черных имеются на доске? Вывести тип.
SELECT fType
FROM Chessmen, Chessboard
WHERE (Chessmen.fid = Chessboard.fid) AND EXISTS
(SELECT * FROM Chessboard) AND fColor = 'black'

GO

--Какие фигуры черных имеются на доске? Вывести тип и количество.
SELECT fType, COUNT(*) as Count
FROM Chessmen, Chessboard
WHERE (Chessmen.fid = Chessboard.fid) AND EXISTS
(SELECT * FROM Chessboard) AND fColor = 'black'
GROUP BY fType

GO

--Найдите типы фигур (любого цвета), которых осталось, по крайней мере, не меньше двух на доске.
SELECT fType, COUNT(*) as Count
FROM Chessmen, Chessboard
WHERE (Chessmen.fid = Chessboard.fid) AND EXISTS
(SELECT * FROM Chessboard)
GROUP BY fType having count(*) > 2

GO

--Цвет фигур, которых на доске больше
SELECT TOP 1 WITH TIES(fColor), COUNT(*) as MaxColor
FROM Chessboard, Chessmen
WHERE (Chessmen.fid = Chessboard.fid) AND EXISTS (SELECT * FROM Chessboard)
GROUP BY fColor ORDER BY COUNT(*)

GO

--Найдите фигуры, которые стоят на возможном пути движения ладьи (rook) (Любой ладьи любого цвета).
--(Ладья может двигаться по горизонтали или по вертикали относительно своего положения на доске в любом направлении).
SELECT fType, x, y
FROM Chessmen, Chessboard
WHERE (Chessmen.fid = Chessboard.fid) AND
((x IN (SELECT x FROM Chessmen, Chessboard WHERE (Chessmen.fid = Chessboard.fid) AND fType = 'rook' AND EXISTS(SELECT * FROM Chessboard)))
OR (y IN (SELECT y FROM Chessmen, Chessboard WHERE (Chessmen.fid = Chessboard.fid) AND fType = 'rook' AND EXISTS(SELECT * FROM Chessboard))))

GO

--У каких игроков (цвета) еще остались ВСЕ пешки (pawn)
SELECT fColor
FROM Chessmen, Chessboard
WHERE (Chessmen.fid = Chessboard.fid) AND EXISTS (SELECT * FROM Chessboard) AND fType = 'pawn'
GROUP BY fColor HAVING COUNT(*) = 8

GO

--CREATE TABLE Chessboard2(
--fId int,
--x nchar not null,
--y nchar not null,
--constraint CK_Chessboard2_x check (x like N'[A-H]'),
--constraint CK_Chessboard2_y check (y like N'[1-8]'),
--constraint FK_Chessboard2_id foreign key (fId) references Chessmen (fId) on delete cascade,
--constraint PK_Chessboard2 primary key (fId),
--constraint UNIQ_Chessboard2 unique (x,y)
--);

USE Chess
--GO
--INSERT [dbo].[Chessboard2] ([fId], [x], [y]) VALUES (1, N'E', N'8')
--GO
--INSERT [dbo].[Chessboard2] ([fId], [x], [y]) VALUES (2, N'B', N'2')
--GO
--INSERT [dbo].[Chessboard2] ([fId], [x], [y]) VALUES (3, N'C', N'2')
--GO
--INSERT [dbo].[Chessboard2] ([fId], [x], [y]) VALUES (4, N'D', N'2')
--GO
--INSERT [dbo].[Chessboard2] ([fId], [x], [y]) VALUES (5, N'E', N'2')
--GO
--INSERT [dbo].[Chessboard2] ([fId], [x], [y]) VALUES (6, N'F', N'2')
--GO
--INSERT [dbo].[Chessboard2] ([fId], [x], [y]) VALUES (7, N'G', N'2')
--GO
--INSERT [dbo].[Chessboard2] ([fId], [x], [y]) VALUES (8, N'H', N'2')
--GO
--INSERT [dbo].[Chessboard2] ([fId], [x], [y]) VALUES (9, N'B', N'1')
--GO
--INSERT [dbo].[Chessboard2] ([fId], [x], [y]) VALUES (10, N'G', N'1')
--GO
--INSERT [dbo].[Chessboard2] ([fId], [x], [y]) VALUES (11, N'C', N'1')
--GO
--INSERT [dbo].[Chessboard2] ([fId], [x], [y]) VALUES (12, N'F', N'1')
--GO
--INSERT [dbo].[Chessboard2] ([fId], [x], [y]) VALUES (13, N'A', N'1')
--GO
--INSERT [dbo].[Chessboard2] ([fId], [x], [y]) VALUES (14, N'H', N'1')
--GO
--INSERT [dbo].[Chessboard2] ([fId], [x], [y]) VALUES (15, N'E', N'1')
--GO
--INSERT [dbo].[Chessboard2] ([fId], [x], [y]) VALUES (16, N'D', N'1')
--GO
--INSERT [dbo].[Chessboard2] ([fId], [x], [y]) VALUES (17, N'A', N'7')
--GO
--INSERT [dbo].[Chessboard2] ([fId], [x], [y]) VALUES (18, N'B', N'7')
--GO
--INSERT [dbo].[Chessboard2] ([fId], [x], [y]) VALUES (19, N'C', N'7')
--GO
--INSERT [dbo].[Chessboard2] ([fId], [x], [y]) VALUES (20, N'D', N'7')
--GO
--INSERT [dbo].[Chessboard2] ([fId], [x], [y]) VALUES (21, N'E', N'7')
--GO
--INSERT [dbo].[Chessboard2] ([fId], [x], [y]) VALUES (22, N'F', N'7')
--GO
--INSERT [dbo].[Chessboard2] ([fId], [x], [y]) VALUES (23, N'G', N'7')
--GO
--INSERT [dbo].[Chessboard2] ([fId], [x], [y]) VALUES (24, N'H', N'7')
--GO
--INSERT [dbo].[Chessboard2] ([fId], [x], [y]) VALUES (25, N'B', N'8')
--GO
--INSERT [dbo].[Chessboard2] ([fId], [x], [y]) VALUES (26, N'G', N'8')
--GO
--INSERT [dbo].[Chessboard2] ([fId], [x], [y]) VALUES (27, N'C', N'8')
--GO
--INSERT [dbo].[Chessboard2] ([fId], [x], [y]) VALUES (28, N'F', N'8')
--GO
--INSERT [dbo].[Chessboard2] ([fId], [x], [y]) VALUES (29, N'A', N'8')
--GO
--INSERT [dbo].[Chessboard2] ([fId], [x], [y]) VALUES (30, N'H', N'8')
--GO
--INSERT [dbo].[Chessboard2] ([fId], [x], [y]) VALUES (31, N'D', N'8')

--Какие фигуры (fid) изменили свою позицию
SELECT Chessboard.fid
FROM Chessboard, Chessboard2
WHERE (Chessboard.fid = Chessboard2.fid) AND ((Chessboard.x != Chessboard2.x) OR (Chessboard.y != Chessboard2.y))

--CREATE FUNCTION dbo.pos_y()
--RETURNS NCHAR AS
--BEGIN
--	RETURN
--	(SELECT y
--	FROM Chessmen, Chessboard
--	WHERE (Chessmen.fid = Chessboard.fid) AND
--	(fType = 'king') AND (fColor = 'black'))
--END

--Вывести id фигуры, если она стоит в «опасной близости» от черного короля. Опасной близостью будем считать квадрат 5х5 с королем в центре.
SELECT fType, Chessmen.fid
FROM Chessmen, Chessboard
WHERE (Chessmen.fid = Chessboard.fid) AND (ABS(ASCII(x) - ASCII(dbo.pos_x('king', 'black'))) <= 2) AND 
(ABS(ASCII(y) - ASCII(dbo.pos_y('king', 'black'))) <= 2)

--CREATE FUNCTION dbo.pos_x(@TYPE NVARCHAR(6), @COLOR NVARCHAR(6))
--RETURNS NCHAR AS
--BEGIN
--	RETURN
--	(SELECT TOP 1(x)
--	FROM Chessmen, Chessboard
--	WHERE (Chessmen.fid = Chessboard.fid) AND
--	(fType = @TYPE) AND (fColor = @COLOR))
--END

--CREATE FUNCTION dbo.pos_y(@TYPE NVARCHAR(6), @COLOR NVARCHAR(6))
--RETURNS NCHAR AS
--BEGIN
--	RETURN
--	(SELECT TOP 1(y)
--	FROM Chessmen, Chessboard
--	WHERE (Chessmen.fid = Chessboard.fid) AND
--	(fType = @TYPE) AND (fColor = @COLOR))
--END

--Найти фигуру, ближе всех стоящую к белому королю (расстояние считаем по метрике L1 – разница координат по X + разница координат по Y.
SELECT TOP 1(fType)
FROM Chessmen, Chessboard
WHERE (Chessmen.fid = Chessboard.fid) AND (fType != 'king')
ORDER BY (ABS(ASCII(x) - ASCII(dbo.pos_x('king', 'white'))) + ABS(ASCII(y) - ASCII(dbo.pos_y('king', 'white'))))

--Найти фигуры, которые может съесть ладья (Cid ладьи задан). Помните, что «своих» есть нельзя!
--SELECT fType, Chessmen.fid
--FROM Chessmen, Chessboard
--WHERE (Chessmen.fid = Chessboard.fid) AND EXISTS
--(SELECT TOP 1(fType)
--FROM Chessmen, Chessboard
--WHERE (Chessmen.fid = Chessboard.fid)
--ORDER BY (ASCII(x) - ASCII(dbo.pos_x('rook', 'white')))) AND EXISTS
--(SELECT TOP 1(fType)
--FROM Chessmen, Chessboard
--WHERE (Chessmen.fid = Chessboard.fid)
--ORDER BY (ASCII(dbo.pos_x('rook', 'white')) - ASCII(x))) AND EXISTS
--(SELECT TOP 1(fType)
--FROM Chessmen, Chessboard
--WHERE (Chessmen.fid = Chessboard.fid)
--ORDER BY (ASCII(y) - ASCII(dbo.pos_y('rook', 'white')))) AND EXISTS
--(SELECT TOP 1(fType)
--FROM Chessmen, Chessboard
--WHERE (Chessmen.fid = Chessboard.fid)
--ORDER BY (ASCII(dbo.pos_y('rook', 'white')) - ASCII(y)))
----GROUP BY fType HAVING (fColor = 'black')

--SELECT TOP 1(fType)
--FROM Chessmen, Chessboard
--WHERE (Chessmen.fid = Chessboard.fid)
--ORDER BY (ASCII(x) - ASCII(dbo.pos_x('rook', 'white')))

use Chess

GO

--TRIGGER START

CREATE TRIGGER Hello
ON Chessboard
INSTEAD OF UPDATE AS
BEGIN
	SELECT x AS INS_X FROM inserted
	SELECT y AS INS_Y FROM inserted
	SELECT fColor AS Inserted_color
	FROM Chessmen
	WHERE fId = (SELECT Chessmen.fId
				FROM Chessmen, Chessboard
				WHERE (Chessmen.fId = Chessboard.fId)
				AND x = (SELECT x FROM inserted)
				AND y = (SELECT y FROM inserted)
				GROUP BY Chessmen.fId HAVING COUNT(*) > 0)
	SELECT x AS DEL_X FROM deleted
	SELECT y AS DEL_Y FROM deleted
	SELECT fColor AS Deleted_color
	FROM Chessmen
	WHERE fId = (SELECT Chessmen.fId
				FROM Chessmen, Chessboard
				WHERE (Chessmen.fId = Chessboard.fId)
				AND x = (SELECT x FROM deleted)
				AND y = (SELECT y FROM deleted)
				GROUP BY Chessmen.fId HAVING COUNT(*) > 0)
	SELECT COUNT(*) AS Count_where_colors_are_the_same
			FROM Chessmen, Chessboard
			WHERE (Chessmen.fId = Chessboard.fId)
			AND x = (SELECT x FROM inserted)
			AND y = (SELECT y FROM inserted)
			AND Chessmen.fColor = (SELECT fColor
								   FROM Chessmen
								   WHERE fId = (SELECT Chessmen.fId
												FROM Chessmen, Chessboard
												WHERE (Chessmen.fId = Chessboard.fId)
												AND x = (SELECT x FROM deleted)
												AND y = (SELECT y FROM deleted)
												GROUP BY Chessmen.fId HAVING COUNT(*) > 0)
								   )
	IF (SELECT COUNT(*) FROM inserted) > 1
	BEGIN
		ROLLBACK
		SELECT 'TOO MANY MOVES' AS ERROR
	END
	ELSE
	IF (SELECT COUNT(*)
			FROM Chessmen, Chessboard
			WHERE (Chessmen.fId = Chessboard.fId) 
			AND x = (SELECT x FROM inserted) 
			AND y = (SELECT y FROM inserted) 			
			AND Chessmen.fColor = (SELECT fColor
								   FROM Chessmen
								   WHERE fId = (SELECT Chessmen.fId
												FROM Chessmen, Chessboard
												WHERE (Chessmen.fId = Chessboard.fId)
												AND x = (SELECT x FROM deleted)
												AND y = (SELECT y FROM deleted)
												GROUP BY Chessmen.fId HAVING COUNT(*) > 0))) > 0
		BEGIN
			ROLLBACK
			SELECT 'COLORS ARE THE SAME' AS ERROR
		END
	ELSE
	BEGIN
	DELETE FROM Chessboard
			WHERE x = (SELECT x FROM inserted) AND y = (SELECT y FROM inserted)
	DELETE FROM Chessboard
			WHERE x = (SELECT x FROM deleted) AND y = (SELECT y FROM deleted)
	INSERT [dbo].[Chessboard] ([fId], [x], [y]) VALUES ((SELECT fId FROM inserted), (SELECT x FROM inserted), (SELECT y FROM inserted))
	END
END

GO

DROP TRIGGER Hello

UPDATE Chessboard
SET y = 2
WHERE fId = 13

SELECT *
FROM Chessmen, Chessboard
WHERE (Chessmen.fId = Chessboard.fId)
ORDER BY x, y

--TRIGGER END

GO

--FUNCTION START

IF OBJECT_ID (N'dbo.Can_be_eaten_by', N'TF') IS NOT NULL
    DROP FUNCTION dbo.Can_be_eaten_by;

GO

CREATE FUNCTION Can_be_eaten_by(@id int)
RETURNS @RESULT TABLE
(fId    int,
fType  nchar(6),
fColor nvarchar(6),
x nchar not null,
y nchar not null
) AS
BEGIN
	DECLARE @my_x nchar = (SELECT x FROM Chessboard WHERE fId = @id)
	DECLARE @my_y nchar = (SELECT y FROM Chessboard WHERE fId = @id)

	DECLARE @my_color nvarchar(6)
	SET @my_color = (SELECT fColor FROM Chessmen WHERE fId = @id)
	DECLARE @Step varchar(5) = 'UP'
	IF @my_color = 'black'
		SET @Step = 'DOWN'
	DECLARE @target_y nchar
	IF @Step = 'UP'
		SET @target_y = CHAR(ASCII(@my_y) + 1)
	ELSE
		SET @target_y = CHAR(ASCII(@my_y) - 1)
	DECLARE @target_x1 nchar = CHAR(ASCII(@my_x) - 1)
	DECLARE @target_x2 nchar = CHAR(ASCII(@my_x) + 1)
	DECLARE @target_color1 nvarchar(6) =
			(SELECT fColor
			FROM Chessmen, Chessboard
			WHERE (Chessmen.fId = Chessboard.fId)
			AND x = @target_x1
			AND y = @target_y)
	DECLARE @target_color2 nvarchar(6) =
			(SELECT fColor
			FROM Chessmen, Chessboard
			WHERE (Chessmen.fId = Chessboard.fId)
			AND x = @target_x2
			AND y = @target_y)
	IF @target_color1 != @my_color
	INSERT @RESULT
	SELECT Chessmen.fId, fType, fColor, x, y
	FROM Chessmen, Chessboard
	WHERE Chessmen.fId = Chessboard.fId AND x = @target_x1 AND y = @target_y
	IF @target_color2 != @my_color
	INSERT @RESULT
	SELECT Chessmen.fId, fType, fColor, x, y
	FROM Chessmen, Chessboard
	WHERE Chessmen.fId = Chessboard.fId AND x = @target_x2 AND y = @target_y
	RETURN
END

GO

SELECT * FROM Can_be_eaten_by(323)

SELECT *
FROM Chessmen, Chessboard
WHERE Chessmen.fId = Chessboard.fId
ORDER BY y

SELECT *
FROM Chessmen, Chessboard
WHERE (Chessmen.fId = Chessboard.fId)
ORDER BY x, y

INSERT [dbo].[Chessmen] ([fId], [fColor], [fType]) VALUES (322, N'white', N'pawn  ')
INSERT [dbo].[Chessboard] ([fId], [x], [y]) VALUES (322, N'C', N'6')

INSERT [dbo].[Chessmen] ([fId], [fColor], [fType]) VALUES (323, N'white', N'pawn  ')
INSERT [dbo].[Chessboard] ([fId], [x], [y]) VALUES (323, N'F', N'6')

--FUNCTION END

GO

--PROCEDURE START

DROP PROCEDURE Can_be_eaten;

GO

CREATE PROCEDURE Can_be_eaten(@Type nchar(6), @Color nvarchar(6))
AS
BEGIN
	DECLARE figures CURSOR FOR
	SELECT fId FROM Chessmen WHERE fType = @Type AND fColor = @Color
	OPEN figures
	DECLARE @id INT
	FETCH FROM figures INTO @id
	WHILE (@@FETCH_STATUS = 0)
	BEGIN
		SELECT * FROM Chessmen, Chessboard WHERE Chessmen.fId = Chessboard.fId AND Chessmen.fId = @id
		SELECT * FROM Can_be_eaten_by(@id)
		FETCH FROM figures INTO @id
	END
	CLOSE figures
	DEALLOCATE figures
END;

EXECUTE Can_be_eaten N'pawn  ', N'white'

--PROCEDURE END