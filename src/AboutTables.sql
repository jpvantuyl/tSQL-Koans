USE TSQL_Koans

SET ANSI_PADDING ON
GO

EXEC tSQLt.NewTestClass 'AboutTables'
GO

/*
CREATE
DROP
INSERT
UPDATE
DELETE
*/

CREATE PROCEDURE AboutTables.[test that ConvertCurrencyUsingLookup converts using conversion rate in CurrencyConversion table]
AS
BEGIN
	EXEC tSQLt.ExpectException;
    DECLARE @expected MONEY; SET @expected = 3.2;
    DECLARE @actual MONEY;
    DECLARE @amount MONEY; SET @amount = 2.00;
    DECLARE @sourceCurrency CHAR(3); SET @sourceCurrency = 'EUR';
    DECLARE @destCurrency CHAR(3); SET @destCurrency = 'USD';

------Fake Table
    EXEC tSQLt.FakeTable 'AboutTables.CurrencyConversion';

    INSERT INTO AboutTables.CurrencyConversion (id, SourceCurrency, DestCurrency, ConversionRate)
                                         VALUES (1, @sourceCurrency, @destCurrency, 1.6);
------Execution
    SELECT @actual = amount FROM AboutTables.ConvertCurrencyUsingLookup(@sourceCurrency, @destCurrency, @amount);

------Assertion
    EXEC tSQLt.assertEquals @expected, @actual;
END;
GO