CREATE PROCEDURE [AppUserSchema].[CSP_AddStudent]
	@FirstName VARCHAR(50),
	@LastName VARCHAR(50),
	@Birthdate DATETIME,
	@Login VARCHAR(50),
	@YearResult INT
AS
BEGIN
	IF EXISTS(SELECT * FROM Student WHERE [Login] = @Login)
	BEGIN
		RAISERROR ('There is a student with the same [Login] in database', 16, 1);
		RETURN -1
	END

	INSERT INTO Student (FirstName, LastName, Birthdate, [Login], YearResult)
	VALUES (@FirstName, @LastName, @Birthdate, @Login, @YearResult)

	RETURN 0
END