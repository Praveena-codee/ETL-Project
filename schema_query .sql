-- Create Two Tables
CREATE TABLE industry (
  industry VARCHAR PRIMARY KEY,
  emp_2017 INT,
  emp_2018 INT,
  emp_2019 INT
  );
Drop TABLE industry;

Drop TABLE earnings;
CREATE TABLE earnings (
  industry VARCHAR PRIMARY KEY,
  earnings_2017 INT,
  earnings_2018 INT,
  earnings_2019 INT
 );


-- Query to check successful load
SELECT * FROM industry;

SELECT * FROM earnings;

--- Join tables on Industry
SELECT industry.industry, industry.emp_2017,industry.emp_2018,industry.emp_2019, earnings.earnings_2017,earnings.earnings_2018, earnings.earnings_2019
FROM industry
INNER JOIN earnings
ON industry.industry = earnings.industry;

