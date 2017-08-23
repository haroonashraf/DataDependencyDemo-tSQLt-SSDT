CREATE SCHEMA [BasicTests]
Authorization dbo
GO

EXECUTE sp_addextendedproperty @name='tSQLt.TestClass',@value=1,@level0type='SCHEMA',@level0name='BasicTests'