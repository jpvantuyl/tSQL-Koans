USE TSQL_Koans

EXEC tSQLt.NewTestClass 'AboutSelects'
GO


CREATE PROCEDURE [AboutSelects].[test select star]
AS
BEGIN
	DECLARE @actual VARCHAR(MAX); SET @actual = 'SELECT ''Value 1'' AS SomeData, ''2'' AS SomeNumber';
			
	
	IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[expected]') AND type in (N'U'))
	DROP TABLE [dbo].[expected];	
	CREATE TABLE expected (
		SomeData	VARCHAR(MAX),
		SomeNumber	INT NOT NULL
	);
	
	INSERT INTO expected (SomeData, SomeNumber) SELECT 'Value 2', '2';
	INSERT INTO expected (SomeData, SomeNumber) SELECT 'Value 3', '3';

    
	EXEC tSQLt.AssertResultSetsHaveSameMetaData 'select * from expected', 'SELECT ''Value 1'' AS SomeData, 2 AS SomeNumber'
END;
GO