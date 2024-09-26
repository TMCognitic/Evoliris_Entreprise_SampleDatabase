IF NOT EXISTS(SELECT * FROM sys.syslogins WHERE name = N'AppUserLogin')
BEGIN
	CREATE LOGIN [AppUserLogin] WITH PASSWORD = 'Test1234=';
END
GO

CREATE USER [AppUser] FOR LOGIN [AppUserLogin]
GO

ALTER ROLE [AppUserRole]
ADD MEMBER [AppUser];
GO

GRANT EXECUTE ON SCHEMA::AppUserSchema TO [AppUserRole]
GO

SET IDENTITY_INSERT Student ON; 
INSERT INTO Student (Id, FirstName, LastName, Birthdate, [Login], YearResult) VALUES (1, 'Georges', 'Lucas', '1944-05-17 00:00:00', 'glucas', 10);
INSERT INTO Student (Id, FirstName, LastName, Birthdate, [Login], YearResult) VALUES (2, 'Clint', 'Eastwood', '1930-05-31 00:00:00', 'ceastwoo', 4);
INSERT INTO Student (Id, FirstName, LastName, Birthdate, [Login], YearResult) VALUES (3, 'Sean', 'Connery', '1930-08-25 00:00:00', 'sconnery', 12);
INSERT INTO Student (Id, FirstName, LastName, Birthdate, [Login], YearResult) VALUES (4, 'Robert', 'De Niro', '1943-08-17 00:00:00', 'rde niro', 3);
INSERT INTO Student (Id, FirstName, LastName, Birthdate, [Login], YearResult) VALUES (5, 'Kevin', 'Bacon', '1958-07-08 00:00:00', 'kbacon', 16);
INSERT INTO Student (Id, FirstName, LastName, Birthdate, [Login], YearResult) VALUES (6, 'Kim', 'Basinger', '1953-12-08 00:00:00', 'kbasinge', 19);
INSERT INTO Student (Id, FirstName, LastName, Birthdate, [Login], YearResult) VALUES (7, 'Johnny', 'Depp', '1963-06-09 00:00:00', 'jdepp', 11);
INSERT INTO Student (Id, FirstName, LastName, Birthdate, [Login], YearResult) VALUES (8, 'Julia', 'Roberts', '1967-10-28 00:00:00', 'jroberts', 17);
INSERT INTO Student (Id, FirstName, LastName, Birthdate, [Login], YearResult) VALUES (9, 'Natalie', 'Portman', '1981-06-09 00:00:00', 'nportman', 4);
INSERT INTO Student (Id, FirstName, LastName, Birthdate, [Login], YearResult) VALUES (10, 'Georges', 'Clooney', '1961-05-06 00:00:00', 'gclooney', 4);
INSERT INTO Student (Id, FirstName, LastName, Birthdate, [Login], YearResult) VALUES (11, 'Andy', 'Garcia', '1956-04-12 00:00:00', 'agarcia', 19);
INSERT INTO Student (Id, FirstName, LastName, Birthdate, [Login], YearResult) VALUES (12, 'Bruce', 'Willis', '1955-03-19 00:00:00', 'bwillis', 6);
INSERT INTO Student (Id, FirstName, LastName, Birthdate, [Login], YearResult) VALUES (13, 'Tom', 'Cruise', '1962-07-03 00:00:00', 'tcruise', 4);
INSERT INTO Student (Id, FirstName, LastName, Birthdate, [Login], YearResult) VALUES (14, 'Reese', 'Witherspoon', '1976-03-22 00:00:00', 'rwithers', 7);
INSERT INTO Student (Id, FirstName, LastName, Birthdate, [Login], YearResult) VALUES (15, 'Sophie', 'Marceau', '1966-11-17 00:00:00', 'smarceau', 6);
INSERT INTO Student (Id, FirstName, LastName, Birthdate, [Login], YearResult) VALUES (16, 'Sarah', 'Michelle Gellar', '1977-04-14 00:00:00', 'smichell', 7);
INSERT INTO Student (Id, FirstName, LastName, Birthdate, [Login], YearResult) VALUES (17, 'Alyssa', 'Milano', '1972-12-19 00:00:00', 'amilano', 7);
INSERT INTO Student (Id, FirstName, LastName, Birthdate, [Login], YearResult) VALUES (18, 'Jennifer', 'Garner', '1972-04-17 00:00:00', 'jgarner', 18);
INSERT INTO Student (Id, FirstName, LastName, Birthdate, [Login], YearResult) VALUES (19, 'Michael J.', 'Fox', '1969-06-20 00:00:00', 'mfox', 3);
INSERT INTO Student (Id, FirstName, LastName, Birthdate, [Login], YearResult) VALUES (20, 'Tom', 'Hanks', '1956-07-09 00:00:00', 'thanks', 8);
INSERT INTO Student (Id, FirstName, LastName, Birthdate, [Login], YearResult) VALUES (21, 'David', 'Morse', '1953-10-11 00:00:00', 'dmorse', 2);
INSERT INTO Student (Id, FirstName, LastName, Birthdate, [Login], YearResult) VALUES (22, 'Sandra', 'Bullock', '1964-07-26 00:00:00', 'sbullock', 2);
INSERT INTO Student (Id, FirstName, LastName, Birthdate, [Login], YearResult) VALUES (23, 'Keanu', 'Reeves', '1964-09-02 00:00:00', 'kreeves', 10);
INSERT INTO Student (Id, FirstName, LastName, Birthdate, [Login], YearResult) VALUES (24, 'Shannen', 'Doherty', '1971-04-12 00:00:00', 'sdoherty', 2);
INSERT INTO Student (Id, FirstName, LastName, Birthdate, [Login], YearResult) VALUES (25, 'Halle', 'Berry', '1966-08-14 00:00:00', 'hberry', 18);
SET IDENTITY_INSERT Student OFF;