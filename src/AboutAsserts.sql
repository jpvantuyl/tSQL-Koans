USE TSQL_Koans

EXEC tSQLt.NewTestClass 'AboutAsserts'
GO


CREATE PROCEDURE [AboutAsserts].[test assert truth]
AS
BEGIN
	EXEC tSQLt.AssertEquals 'True', 'TRUE';	-- This should be true
END;
GO


CREATE PROCEDURE [AboutAsserts].[test assert with message]
AS
BEGIN
	EXEC tSQLt.AssertEquals 'true', 'TRUE', 'This should be true -- Please fix this';
END;
GO


CREATE PROCEDURE [AboutAsserts].[test assert equality]
AS
BEGIN
	DECLARE @actual		INT; SET @actual = 1 + 1;
	
	EXEC tSQLt.AssertEquals 2, @actual;
END;
GO


CREATE PROCEDURE [AboutAsserts].[test assert string equality]
AS
BEGIN
	DECLARE @actual		VARCHAR(MAX); SET @actual = 'Strings are' + ' fun to play with';
	
	EXEC tSQLt.AssertEqualsString 'Strings are fun to play with', @actual;
END;
GO


CREATE PROCEDURE [AboutAsserts].[test assert like]
AS
BEGIN
	DECLARE @actual				VARCHAR(MAX); SET @actual = 'One of these things is not like the other';
		
	EXEC tSQLt.AssertLike '%these things%', @actual;
END;
GO


CREATE PROCEDURE [AboutAsserts].[test assert object existance]
AS
BEGIN
	
	IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[myTable]') AND type in (N'U'))
	DROP TABLE [dbo].myTable;
	CREATE TABLE myTable (
	    SomeData VARCHAR(MAX)
    );
		
	EXEC tSQLt.AssertObjectExists myTable;
END;
GO


CREATE PROCEDURE [AboutAsserts].[test assert table data equality]
AS
BEGIN
	CREATE TABLE numbers (
	    Id VARCHAR(MAX) NOT NULL
    );
    
    INSERT INTO numbers (Id) VALUES (1);
    INSERT INTO numbers (Id) VALUES (2);
    

    SELECT 'Value ' + Id as SomeData
      INTO actual
      FROM numbers;
      
	
	IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[expected]') AND type in (N'U'))
	DROP TABLE [dbo].[expected];
	CREATE TABLE expected (
	    SomeData VARCHAR(MAX)
    );

	INSERT INTO expected (SomeData) SELECT 'Value 1';
	INSERT INTO expected (SomeData) SELECT 'Value 2';

		
	EXEC tSQLt.AssertEqualsTable 'expected', 'actual';
END;
GO


CREATE PROCEDURE [AboutAsserts].[test assert table schema equality]
AS
BEGIN

	CREATE TABLE actual (
	    SomeData VARCHAR(MAX)
    );
    
	INSERT INTO actual (SomeData) SELECT 'Value 1';

	IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[expected]') AND type in (N'U'))
	DROP TABLE [dbo].[expected];
	CREATE TABLE expected (
	    SomeData VARCHAR(MAX)
    );
    
	INSERT INTO expected (SomeData) SELECT 'Value 2';
	INSERT INTO expected (SomeData) SELECT 'Value 3';
		
		
	EXEC tSQLt.AssertResultSetsHaveSameMetaData 'select SomeData from expected', 'select * from actual';
END;
GO


CREATE PROCEDURE [AboutAsserts].[test assert failure]
AS
BEGIN
	IF 1 = 2
	BEGIN
		EXEC tSQLt.Fail "This should not fail -- Please fix this";
	END
END;
GO





USE [TSQL_Koans]
GO
/****** Object:  Table [dbo].[expected]    Script Date: 8/26/2014 6:18:37 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[expected]') AND type in (N'U'))
DROP TABLE [dbo].[expected]
GO
/****** Object:  Table [dbo].[expected]    Script Date: 8/26/2014 6:18:37 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[expected]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[expected](
	[SomeData] [varchar](max) NULL,
	[SomeNumber] [int] NOT NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
