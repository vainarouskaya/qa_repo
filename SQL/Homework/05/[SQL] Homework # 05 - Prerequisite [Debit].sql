USE db_test;

SELECT ID, name, (Credit-Debit) AS Balance FROM checkbook WHERE (Credit-Debit)>=1000 GROUP BY Balance;