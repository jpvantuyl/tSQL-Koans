USE TSQL_Koans

IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[Koans].[__]') AND type in (N'FN', N'IF', N'TF', N'FS', N'FT'))
DROP FUNCTION [Koans].[__]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[Koans].[___]') AND type in (N'FN', N'IF', N'TF', N'FS', N'FT'))
DROP FUNCTION [Koans].[___]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[Koans].[ResultFormatter]') AND type in (N'P', N'PC'))
DROP PROCEDURE [Koans].[ResultFormatter]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[Koans].[ZenMaster]') AND type in (N'U'))
DROP TABLE [Koans].[ZenMaster]
GO
IF  EXISTS (SELECT * FROM sys.schemas WHERE name = N'Koans')
DROP SCHEMA [Koans]
GO


CREATE SCHEMA Koans
GO


CREATE FUNCTION [Koans].[__]()
RETURNS SQL_VARIANT
AS
BEGIN
    RETURN NULL;
END;
GO

CREATE FUNCTION [Koans].[___]()
RETURNS TABLE
AS
	RETURN SELECT __ = NULL
GO


CREATE TABLE [Koans].[ZenMaster] (
	Says	VARCHAR(MAX)
);

--Borrowed with love from the ruby koans (https://github.com/jpvantuyl/ruby_koans/)
INSERT INTO [Koans].[ZenMaster] (Says) SELECT 'has expanded your awareness.';
INSERT INTO [Koans].[ZenMaster] (Says) SELECT 'has damaged your karma.';

INSERT INTO [Koans].[ZenMaster] (Says) SELECT 'You have not yet reached enlightenment.';
INSERT INTO [Koans].[ZenMaster] (Says) SELECT 'I sense frustration. Do not be afraid to ask for help.';
INSERT INTO [Koans].[ZenMaster] (Says) SELECT 'Do not lose hope.';
INSERT INTO [Koans].[ZenMaster] (Says) SELECT 'You are progressing. Excellent.';

INSERT INTO [Koans].[ZenMaster] (Says) SELECT 'The answers you seek...';
INSERT INTO [Koans].[ZenMaster] (Says) SELECT 'Please meditate on the following code:';

INSERT INTO [Koans].[ZenMaster] (Says) SELECT 'Mountains are again merely mountains';
INSERT INTO [Koans].[ZenMaster] (Says) SELECT 'mountains are merely mountains';
INSERT INTO [Koans].[ZenMaster] (Says) SELECT 'learn the rules so you know how to break them properly';
INSERT INTO [Koans].[ZenMaster] (Says) SELECT 'remember that silence is sometimes the best answer';
INSERT INTO [Koans].[ZenMaster] (Says) SELECT 'sleep is the best meditation';
INSERT INTO [Koans].[ZenMaster] (Says) SELECT 'when you lose, don''t lose the lesson';
INSERT INTO [Koans].[ZenMaster] (Says) SELECT 'things are not what they appear to be: nor are they otherwise';
GO

CREATE PROCEDURE [Koans].[ResultFormatter]
AS
BEGIN
    DECLARE @Msg1 NVARCHAR(MAX);
    DECLARE @Msg2 NVARCHAR(MAX);
    DECLARE @Msg3 NVARCHAR(MAX);
    DECLARE @Msg4 NVARCHAR(MAX);
    DECLARE @IsSuccess INT;
    DECLARE @SuccessCnt INT;
    DECLARE @Severity INT;
    
    SELECT ROW_NUMBER() OVER(ORDER BY Result DESC, Name ASC) No,Name [Test Case Name], Result
      INTO #Tmp
      FROM tSQLt.TestResult;
    
    EXEC tSQLt.TableToText @Msg1 OUTPUT, '#Tmp', 'No';

    SELECT @Msg3 = Msg, 
           @IsSuccess = 1 - SIGN(FailCnt + ErrorCnt),
           @SuccessCnt = SuccessCnt
      FROM tSQLt.TestCaseSummary();
      
    SELECT @Severity = 16*(1-@IsSuccess);
    
    SELECT @Msg2 = REPLICATE('-',LEN(@Msg3)),
           @Msg4 = CHAR(13)+CHAR(10);
    
    
    EXEC tSQLt.Private_Print @Msg4,0;
    EXEC tSQLt.Private_Print '+------------------------------+',0;
    EXEC tSQLt.Private_Print '|mountains are merely mountains|',0;
    EXEC tSQLt.Private_Print '+------------------------------+',0;
    EXEC tSQLt.Private_Print @Msg4,0;
    EXEC tSQLt.Private_Print @Msg1,0;
    EXEC tSQLt.Private_Print @Msg2,0;
    EXEC tSQLt.Private_Print @Msg3, @Severity;
    EXEC tSQLt.Private_Print @Msg2,0;
END;
GO


EXEC [tSQLt].[SetTestResultFormatter] '[Koans].[ResultFormatter]'
GO