USE TSQL_Koans

SET ANSI_PADDING ON
GO

EXEC tSQLt.NewTestClass 'AboutTriggers'
GO

CREATE PROCEDURE AboutTriggers.[test inserting record into Student table creates Audit record]
AS
BEGIN
	EXEC tSQLt.ExpectException
  EXEC tSQLt.FakeTable 'Registry.Student';
  EXEC tSQLt.FakeTable @TableName = 'Logs.Audit';
  EXEC tSQLt.ApplyTrigger 'Registry.Student', 'AuditInserts';
  
  INSERT INTO Registry.Student (StudentId) VALUES (1);
  
  SELECT LogMessage
  INTO #Actual
  FROM Logs.Audit;
  
  SELECT TOP(0) *
  INTO #Expected
  FROM #Actual;
  
  INSERT INTO #Expected
  VALUES('Student record created, id = 1');
  
  EXEC tSQLt.AssertEqualsTable '#Expected','#Actual';
END;
GO