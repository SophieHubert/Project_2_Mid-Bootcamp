-- 1. Create a database called credit_card_classification.
use credit_card_classification;
-- 2. Create a table credit_card_data with the same columns as given in the csv file. 
-- You can find the names of the headers for the table in the creditcardmarketing.xlsx file. 
-- Use the same column names as the names in the excel file. 
-- Please make sure you use the correct data types for each of the columns.
select * from credit_card_data;

-- 3. Import the data from the csv file into the table. 
-- Before you import the data into the empty table, make sure that you have deleted the headers from the csv file. 
-- (in this case we have already deleted the header names from the csv files). 
-- To not modify the original data, if you want you can create a copy of the csv file as well. 
-- Note you might have to use the following queries to give permission to SQL to import data from csv files in bulk:
-- Import done with table data import wizard

-- 4. Select all the data from table credit_card_data to check if the data was imported correctly.
select * from credit_card_data;

-- 5. Use the alter table command to drop the column q4_balance from the database, 
-- as we would not use it in the analysis with SQL. 


-- Select all the data from the table to verify if the command worked. Limit your returned results to 10.
select * from credit_card_data
limit 10;

-- 6. Use sql query to find how many rows of data you have.
select count(myunknowncolumn) from credit_card_data;
-- Before to import the data in MySQL I cleanned them in python and it appeared that 24 rows have nan values. 
-- Which is the difference between 18000 (total rows) and 17976 (rows imported)

-- 7. Now we will try to find the unique values in some of the categorical columns:
-- - What are the unique values in the column `Offer_accepted`?
select distinct(offer_accepted) from credit_card_data;
-- - What are the unique values in the column `Reward`?
select distinct(reward) from credit_card_data;
-- - What are the unique values in the column `mailer_type`?
select distinct(mailer_type) from credit_card_data;
-- - What are the unique values in the column `credit_cards_held`?
select distinct(credit_cards_held) from credit_card_data;
-- - What are the unique values in the column `household_size`?
select distinct(household_size) from credit_card_data;




