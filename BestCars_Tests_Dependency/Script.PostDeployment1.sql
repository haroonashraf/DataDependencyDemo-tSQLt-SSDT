/*
Post-Deployment Script Template							
--------------------------------------------------------------------------------------
 This file contains SQL statements that will be appended to the build script.		
 Use SQLCMD syntax to include a file in the post-deployment script.			
 Example:      :r .\myfile.sql								
 Use SQLCMD syntax to reference a variable in the post-deployment script.		
 Example:      :setvar TableName MyTable							
               SELECT * FROM [$(TableName)]					
--------------------------------------------------------------------------------------
*/
/*

Post-Deployment Script Template							

--------------------------------------------------------------------------------------

 This file contains SQL statements that will be appended to the build script.		

 Use SQLCMD syntax to include a file in the post-deployment script.			

 Example:      :r .\myfile.sql								

 Use SQLCMD syntax to reference a variable in the post-deployment script.		

 Example:      :setvar TableName MyTable							

               SELECT * FROM [$(TableName)]					

--------------------------------------------------------------------------------------

*/

-- Run all tSQLt tests

-- Step 1
EXEC tsqlt.run 'MainTests.test if view outputs correct data based on source data bound to database';

/*
-- Step 2 (Uncomment the statement below to run both first and second test which is going to fail due to data dependency)
EXEC tsqlt.RunTestClass @TestClassName = N'MainTests' -- nvarchar(max)
*/




    

