-- 8. Arrange the data in a decreasing order by the average_balance of the house. 
-- Return only the customer_number of the top 10 customers with the highest average_balances in your data.

-- 9. What is the average balance of all the customers in your data?

-- 10. In this exercise we will use group by to check the properties of some of the categorical variables in our data. Note wherever average_balance is asked in the questions below, please take the average of the column average_balance:

-- - What is the average balance of the customers grouped by `Income Level`? The returned result should have only two columns, income level and `Average balance` of the customers. Use an alias to change the name of the second column.
-- - What is the average balance of the customers grouped by `number_of_bank_accounts_open`? The returned result should have only two columns, `number_of_bank_accounts_open` and `Average balance` of the customers. Use an alias to change the name of the second column.
-- - What is the average number of credit cards held by customers for each of the credit card ratings? The returned result should have only two columns, rating and average number of credit cards held. Use an alias to change the name of the second column.
-- - Is there any correlation between the columns `credit_cards_held` and `number_of_bank_accounts_open`? You can analyse this by grouping the data by one of the variables and then aggregating the results of the other column. Visually check if there is a positive correlation or negative correlation or no correlation between the variables.
-- You might also have to check the number of customers in each category (ie number of credit cards held) to assess if that category is well represented in the dataset to include it in your analysis. For eg. If the category is under-represented as compared to other categories, ignore that category in this analysis


-- 11. Your managers are only interested in the customers with the following properties:

-- - Credit rating medium or high
-- - Credit cards held 2 or less
-- - Owns their own home
-- - Household size 3 or more

-- For the rest of the things, they are not too concerned. Write a simple query to find what are the options available for them? Can you filter the customers who accepted the offers here?
-- 12. Your managers want to find out the list of customers whose average balance is less than the average balance of all the customers in the database. Write a query to show them the list of such customers. You might need to use a subquery for this problem.

-- 13. Since this is something that the senior management is regularly interested in, create a view called Customers__Balance_View1 of the same query.

-- 14. What is the number of people who accepted the offer vs number of people who did not?

-- 15. Your managers are more interested in customers with a credit rating of high or medium. What is the difference in average balances of the customers with high credit card rating and low credit card rating?

-- 16. In the database, which all types of communication (mailer_type) were used and with how many customers?

-- 17. Provide the details of the customer that is the 11th least Q1_balance in your database.