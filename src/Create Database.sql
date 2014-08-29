USE [master]
GO

DECLARE @DatabaseName nvarchar(50)
SET @DatabaseName = N'TSQL_Koans'

DECLARE @SQL varchar(max)

SELECT @SQL = COALESCE(@SQL,'') + 'Kill ' + Convert(varchar, SPId) + ';'
FROM MASTER..SysProcesses
WHERE DBId = DB_ID(@DatabaseName) AND SPId <> @@SPId

EXEC(@SQL)

IF  EXISTS (SELECT name FROM master.dbo.sysdatabases WHERE name = @DatabaseName)
DROP DATABASE [TSQL_Koans]
GO

SET ANSI_PADDING ON
GO

CREATE DATABASE [TSQL_Koans]
GO

USE [TSQL_Koans]
GO