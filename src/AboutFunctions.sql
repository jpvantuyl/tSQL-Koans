USE TSQL_Koans

SET ANSI_PADDING ON
GO

EXEC tSQLt.NewTestClass 'AboutFunctions'
GO

/*
http://msdn.microsoft.com/en-us/library/ms174318.aspx
*/

CREATE FUNCTION AboutFunctions.Fake_ComputeCommission (@EmployeeId INT, @RevenueFromSales DECIMAL(10,4))
RETURNS DECIMAL(10,4)
AS
BEGIN
  RETURN 1234.5678;
END;
GO

CREATE PROCEDURE AboutFunctions.[test SalesReport returns revenue and commission]
AS
BEGIN
	EXEC tSQLt.ExpectException;
-------Assemble
    EXEC tSQLt.FakeFunction 'SalesApp.ComputeCommission', 'AboutFunctions.Fake_ComputeCommission';
    EXEC tSQLt.FakeTable 'SalesApp.Employee';
    EXEC tSQLT.FakeTable 'SalesApp.Sales';

    INSERT INTO SalesApp.Employee (EmployeeId) VALUES (1);
    INSERT INTO SalesApp.Sales (EmployeeId, SaleAmount) VALUES (1, 10.1);
    INSERT INTO SalesApp.Sales (EmployeeId, SaleAmount) VALUES (1, 20.2);

-------Act
    SELECT EmployeeId, RevenueFromSales, Commission
      INTO AboutFunctions.Actual
      FROM SalesApp.SalesReport;

-------Assert
    SELECT TOP(0) *
      INTO AboutFunctions.Expected
      FROM AboutFunctions.Actual;

    INSERT INTO AboutFunctions.Expected (EmployeeId, RevenueFromSales, Commission) VALUES (1, 30.3, 1234.5678);

    EXEC tSQLt.AssertEqualsTable 'AboutFunctions.Expected', 'AboutFunctions.Actual';
END;
GO