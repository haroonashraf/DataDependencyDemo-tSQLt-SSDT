CREATE PROCEDURE [MainTests].[test if view outputs correct data based on source data bound to database after one more record]
AS
BEGIN
	-- Data Dependency: 
	-- When a unit test depends on the data of the database then it
	-- is said to have data dependency
	-- 
	-- Standard Practice:
	-- A good database unit test should not depend on the data of database under test
	-- 
	-- Test: 
	-- The test below depends on actual table data 
	-- so it has data dependency that means adding or removing data from the database
	-- is going to affect this test
	-- 
	-- Haroon Ashraf (23-Aug-2017)
	
	---=============================================================================================================
  -- (1) Assemble
  --==============================================================================================================
	-- Create expected table
	IF OBJECT_ID('MainTests.Expected') IS NOT NULL
	DROP TABLE MainTests.Expected

	CREATE TABLE [MainTests].[Expected]
	(
		[CarId] INT NOT NULL PRIMARY KEY,
		[Name] VARCHAR(50),
		[Year] SMALLINT
	)
	
	-- Populate expected table
	INSERT INTO [MainTests].[Expected] ([CarId], [Name], [Year]) VALUES (1, N'BMW', 2016)
	INSERT INTO [MainTests].[Expected] ([CarId], [Name], [Year]) VALUES (2, N'Mercedes', 2015)
	INSERT INTO [MainTests].[Expected] ([CarId], [Name], [Year]) VALUES (3, N'Toyota', 2014)
	INSERT INTO [MainTests].[Expected] ([CarId], [Name], [Year]) VALUES (4, N'Peugeot', 2013)
	INSERT INTO [MainTests].[Expected] ([CarId], [Name], [Year]) VALUES (5, N'BMW', 2012)

	-- Create actual table
	IF OBJECT_ID('MainTests.Actual') IS NOT NULL
	DROP TABLE MainTests.Expected

	CREATE TABLE [MainTests].[Actual]
	(
		[CarId] INT NOT NULL PRIMARY KEY,
		[Name] VARCHAR(50),
		[Year] SMALLINT
	)
	
	-- ****** Add one more record to database table *********
	EXEC [$(BestCars)].dbo.AddOneMoreRecord 

	---=============================================================================================================
  -- (2) Act (Put best cars in last 5 years from database table into actual table)
  --==============================================================================================================
		INSERT INTO MainTests.Actual
	SELECT * FROM [$(BestCars)].dbo.BestCarsInLast5Years

	---=============================================================================================================
  -- (3) Assert (match expected table data with actual table data)
  --==============================================================================================================
	EXEC tSQLt.AssertEqualsTable 'MainTests.Expected','MainTests.Actual'

END