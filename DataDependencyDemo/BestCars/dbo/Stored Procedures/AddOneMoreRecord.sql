CREATE PROCEDURE [dbo].[AddOneMoreRecord]
	
AS
		INSERT INTO dbo.Car
	 (Name, Year )
VALUES  ( 'Volvo', 
          2017)
	-- ACT	
RETURN 0
