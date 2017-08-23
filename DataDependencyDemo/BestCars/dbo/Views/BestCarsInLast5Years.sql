CREATE VIEW [dbo].[BestCarsInLast5Years]
	AS SELECT TOP 5 [CarId], [Name], [Year] FROM [Car]
	ORDER BY Year DESC

