CREATE FUNCTION [dbo].[CSF_GetAge]
(
	@Birthdate DATE
)
RETURNS INT
AS
BEGIN
	DECLARE @CurrentDate DATE = GETDATE();
	DECLARE @Age INT = YEAR(@CurrentDate) - YEAR(@BirthDate);

	IF DATEADD(YEAR, @Age, @Birthdate) > @CurrentDate
	BEGIN
		SET @Age = @Age - 1;
	END

	RETURN @Age
END
