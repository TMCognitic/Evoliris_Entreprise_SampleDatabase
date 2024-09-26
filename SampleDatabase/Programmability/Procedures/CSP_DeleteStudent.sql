CREATE PROCEDURE [AppUserSchema].[CSP_DeleteStudent]
	@StudentId int
AS
BEGIN
	IF NOT EXISTS (SELECT * FROM Student WHERE Id = @StudentId AND Active = 1)
	BEGIN
		RETURN -1;		
	END

	UPDATE Student SET Active = 0 WHERE Id = @StudentId;
	RETURN 0
END