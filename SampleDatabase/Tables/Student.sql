﻿CREATE TABLE [dbo].Student (
  Id INT NOT NULL IDENTITY,
  FirstName VARCHAR(50) NOT NULL,
  LastName VARCHAR(50) NOT NULL,
  Birthdate DATETIME NOT NULL,
  [Login] VARCHAR(50) NOT NULL,
  YearResult INT NOT NULL,
  Active BIT NOT NULL
	CONSTRAINT DF_Student_Active DEFAULT(1),
  CONSTRAINT PK_Student PRIMARY KEY (Id),
  CONSTRAINT UK_Student_Login UNIQUE ([Login]),
  CONSTRAINT CK_Student_YearResult CHECK (YearResult BETWEEN 0 AND 20)
);
GO

CREATE TRIGGER CTR_OnDeleteStudent
ON Student
INSTEAD OF DELETE
AS
BEGIN
	UPDATE Student SET Active = 0
	WHERE Id IN (SELECT Id FROM deleted)
	AND Active = 1;
END