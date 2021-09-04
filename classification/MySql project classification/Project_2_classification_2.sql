-- 8. Arrange the data in a decreasing order by the average_balance of the house. 
-- Return only the customer_number of the top 10 customers with the highest average_balances in your data.
select customer_number from credit_card_data
order by average_balance desc
limit 10;

-- 9. What is the average balance of all the customers in your data?
select avg(average_balance) from credit_card_data;

-- 10. In this exercise we will use group by to check the properties of some of the categorical variables in our data. Note wherever average_balance is asked in the questions below, please take the average of the column average_balance:

-- - What is the average balance of the customers grouped by `Income Level`? 
-- The returned result should have only two columns, income level and `Average balance` of the customers. 
-- Use an alias to change the name of the second column.
select  income_level, avg(average_balance) as income_average_balance
from credit_card_data
group by income_level;

-- - What is the average balance of the customers grouped by `number_of_bank_accounts_open`? 
-- The returned result should have only two columns, `number_of_bank_accounts_open` and `Average balance` of the customers. Use an alias to change the name of the second column.

select bank_accounts_open  , avg(average_balance) as bank_account_average_balance
from credit_card_data
group by bank_accounts_open;

-- - What is the average number of credit cards held by customers for each of the credit card ratings? 
-- The returned result should have only two columns, rating and average number of credit cards held. 
-- Use an alias to change the name of the second column.

select credit_rating  , avg(credit_cards_held) as avg_credit_cards_held
from credit_card_data
group by credit_rating;


-- - Is there any correlation between the columns `credit_cards_held` and `number_of_bank_accounts_open`? 
-- You can analyse this by grouping the data by one of the variables and then aggregating the results of the other column. 
-- Visually check if there is a positive correlation or negative correlation or no correlation between the variables.
-- You might also have to check the number of customers in each category (ie number of credit cards held) to assess if that category is well represented in the dataset to include it in your analysis. For eg. If the category is under-represented as compared to other categories, ignore that category in this analysis


-- 11. Your managers are only interested in the customers with the following properties:
-- - Credit rating medium or high
-- - Credit cards held 2 or less
-- - Owns their own home
-- - Household size 3 or more
-- For the rest of the things, they are not too concerned. 
-- Write a simple query to find what are the options available for them? 
-- Can you filter the customers who accepted the offers here?
select credit_rating, credit_cards_held, homes_owned, household_size ,offer_accepted
from credit_card_data
where credit_rating = 'medium' or credit_rating = 'high'
and credit_cards_held <= 2
and homes_owned = 'yes'
and household_size >= 3 
having offer_accepted = 'yes';

-- 12. Your managers want to find out the list of customers whose average balance is less than the average balance 
-- of all the customers in the database. Write a query to show them the list of such customers. 
-- You might need to use a subquery for this problem.
select customer_number, average_balance 
from credit_card_data
where average_balance <
(select avg(average_balance) from credit_card_data
 ) 
 ;
 
-- 13. Since this is something that the senior management is regularly interested in, 
-- create a view called Customers__Balance_View1 of the same query.
create Customers__Balance_View1 as
select customer_number, average_balance 
from credit_card_data
where average_balance <
(select avg(average_balance) from credit_card_data
 ) 
 ;

-- 14. What is the number of people who accepted the offer vs number of people who did not?
select sum(offer_accepted='Yes') as offer_accepted, sum(offer_accepted='No') as offer_not_accepted
from credit_card_data;


-- 15. Your managers are more interested in customers with a credit rating of high or medium. 
-- What is the difference in average balances of the customers with high credit card rating 
-- and low credit card rating?
select customer_number, credit_rating, average_balance
from credit_card_data
where credit_rating = 'high' or credit_rating = 'medium';

select credit_rating, avg(average_balance)
from credit_card_data
where credit_rating != 'low'
group by credit_rating;

-- 16. In the database, which all types of communication (mailer_type) were used and with how many customers?
select mailer_type ,count(customer_number)
from credit_card_data
group by mailer_type;

-- 17. Provide the details of the customer that is the 11th least Q1_balance in your database.
select customer_number, rank(q1_balance)
from credit_card_data;