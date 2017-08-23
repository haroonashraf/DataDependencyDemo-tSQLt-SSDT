CREATE PROCEDURE [BasicTests].[test if BestCarsInLast5Years exists]
AS
BEGIN
	
	EXEC tSQLt.AssertObjectExists 'dbo.BestCarsInLast5Years'

END