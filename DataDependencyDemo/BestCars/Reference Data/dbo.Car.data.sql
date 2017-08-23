DELETE FROM Car
GO

SET IDENTITY_INSERT [dbo].[Car] ON
--INSERT INTO [dbo].[Car] ([CarId], [Name], [Year]) VALUES (1, N'Volvo', 2017)
INSERT INTO [dbo].[Car] ([CarId], [Name], [Year]) VALUES (1, N'BMW', 2016)
INSERT INTO [dbo].[Car] ([CarId], [Name], [Year]) VALUES (2, N'Mercedes', 2015)
INSERT INTO [dbo].[Car] ([CarId], [Name], [Year]) VALUES (3, N'Toyota', 2014)
INSERT INTO [dbo].[Car] ([CarId], [Name], [Year]) VALUES (4, N'Peugeot', 2013)
INSERT INTO [dbo].[Car] ([CarId], [Name], [Year]) VALUES (5, N'BMW', 2012)
INSERT INTO [dbo].[Car] ([CarId], [Name], [Year]) VALUES (6, N'Audi', 2011)
INSERT INTO [dbo].[Car] ([CarId], [Name], [Year]) VALUES (7, N'Honda', 2010)
SET IDENTITY_INSERT [dbo].[Car] OFF
