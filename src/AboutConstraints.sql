USE TSQL_Koans

SET ANSI_PADDING ON
GO

EXEC tSQLt.NewTestClass 'AboutConstraints'
GO

/*
CHECK
FOREIGN KEY
UNIQUE
PRIMARY KEY
*/

CREATE PROCEDURE AboutConstraints.[test ReferencingTable_ReferencedTable_FK prevents insert of orphaned rows]
AS
BEGIN
	EXEC tSQLt.ExpectException;
     EXEC tSQLt.FakeTable 'dbo.ReferencedTable';
     EXEC tSQLt.FakeTable 'dbo.ReferencingTable';
     
     EXEC tSQLt.ApplyConstraint 'dbo.ReferencingTable','ReferencingTable_ReferencedTable_FK';
     
     DECLARE @ErrorMessage NVARCHAR(MAX); SET @ErrorMessage = '';
     
     BEGIN TRY
    INSERT  INTO dbo.ReferencingTable
            ( id, ReferencedTableId )
    VALUES  ( 1, 11 ) ;
     END TRY
     BEGIN CATCH
    SET @ErrorMessage = ERROR_MESSAGE();     
     END CATCH
     
     IF @ErrorMessage NOT LIKE '%ReferencingTable_ReferencedTable_FK%'
     BEGIN
       EXEC tSQLt.Fail 'Expected error message containing ''ReferencingTable_ReferencedTable_FK'' but got: ''',@ErrorMessage,'''!';
     END
     
END
GO

CREATE PROCEDURE AboutConstraints.[test ReferencingTable_ReferencedTable_FK allows insert of non-orphaned rows]
AS
BEGIN
	EXEC tSQLt.ExpectException;
     EXEC tSQLt.FakeTable 'dbo.ReferencedTable';
     EXEC tSQLt.FakeTable 'dbo.ReferencingTable';
     
     EXEC tSQLt.ApplyConstraint 'dbo.ReferencingTable','ReferencingTable_ReferencedTable_FK';
     
  INSERT  INTO dbo.ReferencedTable
          ( id )
  VALUES  ( 11 ) ;
  INSERT  INTO dbo.ReferencingTable
          ( id, ReferencedTableId )
  VALUES  ( 1, 11 ) ;
END
GO