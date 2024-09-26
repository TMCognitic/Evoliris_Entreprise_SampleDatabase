CREATE FUNCTION [dbo].[GetStudentInline]
(
	@MinYearResult INT
)
RETURNS TABLE
AS RETURN
(
	SELECT Id, LastName, FirstName, Birthdate, dbo.CSF_GetAge(Birthdate) AS Age, [Login], YearResult
	FROM Student
	WHERE YearResult >= @MinYearResult
);