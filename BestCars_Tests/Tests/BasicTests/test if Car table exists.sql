CREATE PROCEDURE [BasicTests].[test if Car table exists]
AS
BEGIN
	
	EXEC tSQLt.AssertObjectExists 'dbo.Car'

END