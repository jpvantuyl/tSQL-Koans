USE TSQL_Koans

EXEC tSQLt.NewTestClass 'AboutAggregates'
GO

/*
http://www.techonthenet.com/sql/group_by.php
GROUP BY
HAVING
SUM
COUNT
MAX
MIN
AVG
*/

/*
<SELECT statement> ::=  
    [WITH <common_table_expression> [,...n]]
    <query_expression> 
    [ ORDER BY { order_by_expression | column_position [ ASC | DESC ] } 
  [ ,...n ] ] 
    [ <FOR Clause>] 
    [ OPTION ( <query_hint> [ ,...n ] ) ] 
<query_expression> ::= 
    { <query_specification> | ( <query_expression> ) } 
    [  { UNION [ ALL ] | EXCEPT | INTERSECT }
        <query_specification> | ( <query_expression> ) [...n ] ] 
<query_specification> ::= 
SELECT [ ALL | DISTINCT ] 
    [TOP ( expression ) [PERCENT] [ WITH TIES ] ] 
    < select_list > 
    [ INTO new_table ] 
    [ FROM { <table_source> } [ ,...n ] ] 
    [ WHERE <search_condition> ] 
    [ <GROUP BY> ] 
    [ HAVING < search_condition > ] 
*/