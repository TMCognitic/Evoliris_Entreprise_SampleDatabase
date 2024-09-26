CREATE FUNCTION [dbo].[GetStudentMultiStatement]
(
	@ActiveOnly BIT
)
RETURNS @Result TABLE
(
	Id int,
	FirstName varchar(50) NOT NULL,
	LastName varchar(50) NOT NULL,
	Birthdate datetime NOT NULL,
	Age INT NOT NULL,
	[Login] varchar(50) NOT NULL,
	YearResult int NOT NULL
)
AS
BEGIN
	IF @ActiveOnly = 1
	BEGIN
		INSERT INTO @Result (Id, FirstName, LastName, Birthdate, Age, [Login], YearResult) 
		SELECT Id, FirstName, LastName, Birthdate, dbo.CSF_GetAge(Birthdate), [Login], YearResult
		FROM Student
		WHERE Active = 1;
	END
	ELSE
	BEGIN
		INSERT INTO @Result (Id, FirstName, LastName, Birthdate, Age, [Login], YearResult)
		SELECT Id, FirstName, LastName, Birthdate, dbo.CSF_GetAge(Birthdate), [Login], YearResult
		FROM Student;
	END

	RETURN;
END
