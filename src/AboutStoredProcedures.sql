USE TSQL_Koans

SET ANSI_PADDING ON
GO

EXEC tSQLt.NewTestClass 'AboutStoredProcedures'
GO

CREATE PROCEDURE AboutStoredProcedures.[test that SalesReport calls HistoricalReport when @showHistory = 1]
AS
BEGIN
	EXEC tSQLt.ExpectException;

-------Assemble
    EXEC tSQLt.SpyProcedure 'FinancialApp.HistoricalReport';
    EXEC tSQLt.SpyProcedure 'FinancialApp.CurrentReport';

-------Act
    EXEC FinancialApp.SalesReport 'USD', @showHistory = 1;

    SELECT currency
      INTO actual
      FROM FinancialApp.HistoricalReport_SpyProcedureLog;

-------Assert HistoricalReport got called with right parameter
    SELECT currency
      INTO expected
      FROM (SELECT 'USD') ex(currency);

    EXEC tSQLt.AssertEqualsTable 'actual', 'expected';

-------Assert CurrentReport did not get called
    IF EXISTS (SELECT 1 FROM FinancialApp.CurrentReport_SpyProcedureLog)
       EXEC tSQLt.Fail 'SalesReport should not have called CurrentReport when @showHistory = 1';
END;
GO