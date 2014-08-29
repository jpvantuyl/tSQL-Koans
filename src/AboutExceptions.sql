USE TSQL_Koans

SET ANSI_PADDING ON
GO

EXEC tSQLt.NewTestClass 'AboutExceptions'
GO


CREATE PROCEDURE [AboutExceptions].[test expect exception]
AS
BEGIN
	EXEC tSQLt.ExpectException @Message = 'Table dbo.DoesNotExist not found.', @ExpectedSeverity = 11, @ExpectedState = 5;
	DROP TABLE DoesNotExist;
END;
GO


CREATE PROCEDURE [AboutExceptions].[test expect no exception]
AS
BEGIN
	EXEC tSQLt.ExpectNoException;
	CREATE TABLE Endangered ( SomeData VARCHAR(MAX) );
	DROP TABLE Endangered;
END;
GO