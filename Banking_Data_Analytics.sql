use practice;

create table Customers(
Customer_ID Varchar(11) primary key, 
Name varchar(25) not null, Age int, 
Join_Date date);

INSERT INTO customers (customer_id, name, age, join_date) VALUES
(1, 'Alice Smith', 32, '2018-06-15'),
(2, 'Bob Johnson', 45, '2017-08-21'),
(3, 'Carol White', 28, '2019-02-10'),
(4, 'David Brown', 50, '2020-12-05'),
(5, 'Emily Davis', 35, '2016-03-19'),
(6, 'Frank Miller', 29, '2018-07-22'),
(7, 'Grace Wilson', 40, '2019-11-10'),
(8, 'Henry Moore', 31, '2021-01-25'),
(9, 'Isla Taylor', 52, '2015-10-15'),
(10, 'Jack Harris', 27, '2020-04-05'),
(11, 'Karen Clark', 37, '2019-06-13'),
(12, 'Leo Lewis', 33, '2017-09-09'),
(13, 'Mia Young', 43, '2018-01-16'),
(14, 'Nora King', 46, '2016-08-30'),
(15, 'Oscar Hill', 29, '2021-04-01');

select * from Customers

create table transactions(transaction_id int, customer_id varchar(11), transaction_date date, amount int,
transaction_type varchar(50));

INSERT INTO transactions (transaction_id, customer_id, transaction_date, amount, transaction_type) 
VALUES
(101, 1, '2023-01-15', 500, 'deposit'),
(102, 2, '2023-02-19', 1200, 'deposit'),
(103, 3, '2023-02-20', 100, 'withdrawal'),
(104, 4, '2023-03-25', 2000, 'deposit'),
(105, 5, '2023-04-12', 500, 'withdrawal'),
(106, 6, '2023-05-03', 1500, 'deposit'),
(107, 7, '2023-05-25', 700, 'deposit'),
(108, 8, '2023-06-01', 300, 'withdrawal'),
(109, 9, '2023-06-13', 1000, 'deposit'),
(110, 10, '2023-06-20', 200, 'withdrawal'),
(111, 11, '2023-07-02', 800, 'deposit'),
(112, 12, '2023-07-18', 400, 'withdrawal'),
(113, 13, '2023-07-30', 5000, 'deposit'),
(114, 14, '2023-08-09', 250, 'withdrawal'),
(115, 15, '2023-08-15', 1000, 'deposit');

select * from transactions;

create table loans(loan_id int, customer_id varchar(11), 
loan_amount int, loan_type varchar(50), due_date date, payment_date date, 
status varchar(50));

INSERT INTO loans (loan_id, customer_id, loan_amount, loan_type, due_date, payment_date, status) VALUES
(201, 1, 15000, 'home', '2023-07-15', '2023-07-10', 'paid'),
(202, 2, 20000, 'auto', '2023-08-15', '2023-08-20', 'overdue'),
(203, 3, 5000, 'personal', '2023-09-10', NULL, 'due'),
(204, 4, 10000, 'business', '2023-07-25', '2023-07-20', 'paid'),
(205, 5, 15000, 'education', '2023-10-15', NULL, 'due'),
(206, 6, 8000, 'home', '2023-08-10', '2023-08-05', 'paid'),
(207, 7, 12000, 'auto', '2023-07-01', '2023-07-10', 'overdue'),
(208, 8, 3000, 'personal', '2023-09-05', NULL, 'due'),
(209, 9, 10000, 'business', '2023-06-20', '2023-06-25', 'paid'),
(210, 10, 7000, 'education', '2023-10-01', NULL, 'due'),
(211, 11, 20000, 'home', '2023-08-20', '2023-08-25', 'paid'),
(212, 12, 9000, 'auto', '2023-09-15', '2023-09-20', 'overdue'),
(213, 13, 6000, 'personal', '2023-07-10', '2023-07-15', 'paid'),
(214, 14, 11000, 'business', '2023-10-05', NULL, 'due'),
(215, 15, 10000, 'education', '2023-08-15', '2023-08-20', 'overdue');

select * from loans;

create table branch_transactions(branch_id int, 
transaction_date date,
transaction_amount int);

INSERT INTO branch_transactions (branch_id, transaction_date, transaction_amount) VALUES
(1, '2023-01-15', 5000),
(2, '2023-02-19', 12000),
(3, '2023-03-20', 700),
(4, '2023-03-25', 20000),
(5, '2023-04-12', 500),
(1, '2023-05-03', 1500),
(2, '2023-05-25', 7000),
(3, '2023-06-01', 300),
(4, '2023-06-13', 10000),
(5, '2023-06-20', 200),
(1, '2023-07-02', 800),
(2, '2023-07-18', 400),
(3, '2023-07-30', 5000),
(4, '2023-08-09', 250),
(5, '2023-08-15', 1000);

select * from branch_transactions;

create table branches(branch_id int, region varchar(50), branch_name varchar(50));
INSERT INTO branches (branch_id, region, branch_name) VALUES
(1, 'North', 'Northgate Branch'),
(2, 'South', 'Southpark Branch'),
(3, 'East', 'Eastside Branch'),
(4, 'West', 'Westwood Branch'),
(5, 'Central', 'Downtown Branch'),
(6, 'North', 'Highland Branch'),
(7, 'South', 'Riverside Branch'),
(8, 'East', 'Lakeside Branch'),
(9, 'West', 'Meadow Branch'),
(10, 'Central', 'City Center Branch'),
(11, 'North', 'Greenfield Branch'),
(12, 'South', 'Brookside Branch'),
(13, 'East', 'Sunset Branch'),
(14, 'West', 'Valley Branch'),
(15, 'Central', 'Metro Branch');


create table account_activity(
customer_id varchar(11), activity_date date, 
transaction_type varchar(50), balance int);

INSERT INTO account_activity (customer_id, activity_date, transaction_type, balance) VALUES
(1, '2023-01-15', 'deposit', 5000),
(2, '2023-02-19', 'deposit', 12000),
(3, '2023-03-20', 'withdrawal', 700),
(4, '2023-03-25', 'deposit', 20000),
(5, '2023-04-12', 'withdrawal', 500),
(6, '2023-05-03', 'deposit', 1500),
(7, '2023-05-25', 'deposit', 7000),
(8, '2023-06-01', 'withdrawal', 300),
(9, '2023-06-13', 'deposit', 10000),
(10, '2023-06-20', 'withdrawal', 200),
(11, '2023-07-02', 'deposit', 800),
(12, '2023-07-18', 'withdrawal', 400),
(13, '2023-07-30', 'deposit', 5000),
(14, '2023-08-09', 'withdrawal', 250),
(15, '2023-08-15', 'deposit', 1000);

select * from account_activity;

--Calculate Customer Lifetime Value (CLV) by summing transactions for each customer.
SELECT c.customer_id, c.name, SUM(t.amount) AS lifetime_value
FROM customers c
JOIN transactions t ON c.customer_id = t.customer_id
GROUP BY c.customer_id, c.name
ORDER BY lifetime_value DESC;

--Identify overdue loans and categorize them by loan type.
SELECT loan_type, COUNT(*) AS overdue_count
FROM loans
WHERE status = 'overdue' AND payment_date > due_date
GROUP BY loan_type
ORDER BY overdue_count DESC;

--Track customer engagement based on transaction frequency within the last year.
SELECT customer_id, COUNT(*) AS transaction_count
FROM account_activity
WHERE activity_date >= DATEADD(year, -1, GETDATE())
GROUP BY customer_id
ORDER BY transaction_count DESC;

--Calculate total deposits per branch and categorize by region.
SELECT b.region, b.branch_name, SUM(bt.transaction_amount) AS total_deposits
FROM branches b
JOIN branch_transactions bt ON b.branch_id = bt.branch_id
WHERE bt.transaction_amount > 0  -- Assuming positive amounts are deposits
GROUP BY b.region, b.branch_name
ORDER BY total_deposits DESC;

--Flag transactions that exceed a threshold (e.g., $2,000) in a single day for a customer.
SELECT customer_id, transaction_date, SUM(amount) AS daily_total
FROM transactions
GROUP BY customer_id, transaction_date
HAVING SUM(amount) >= 2000
ORDER BY daily_total DESC;

--Total Deposits and Withdrawals Per Branch by Region
SELECT b.region, b.branch_name,
       SUM(CASE WHEN bt.transaction_amount > 0 THEN bt.transaction_amount ELSE 0 END) AS total_deposits,
       SUM(CASE WHEN bt.transaction_amount < 0 THEN ABS(bt.transaction_amount) ELSE 0 END) AS total_withdrawals
FROM branches b
JOIN branch_transactions bt ON b.branch_id = bt.branch_id
GROUP BY b.region, b.branch_name
ORDER BY b.region, total_deposits DESC;

--Customers with High Lifetime Value
SELECT c.customer_id, c.name, SUM(t.amount) AS lifetime_value
FROM customers c
JOIN transactions t ON c.customer_id = t.customer_id
WHERE t.transaction_type = 'deposit'
GROUP BY c.customer_id, c.name
HAVING SUM(t.amount) > 10000
ORDER BY lifetime_value DESC;

--Loans Overdue Report by Customer with Branch Information

SELECT c.customer_id, c.name, l.loan_id, l.loan_amount, l.loan_type, l.due_date, b.branch_name, b.region
FROM loans l
JOIN customers c ON l.customer_id = c.customer_id
JOIN branches b ON c.customer_id = b.branch_id  -- assuming customer branch assignment
WHERE l.status = 'overdue'
ORDER BY l.due_date;

--Average Transaction Amount for Each Customer by Branch
SELECT c.customer_id, c.name, b.branch_name, AVG(t.amount) AS avg_transaction_amount
FROM transactions t
JOIN customers c ON t.customer_id = c.customer_id
JOIN branches b ON c.customer_id = b.branch_id  -- assuming customer branch assignment
GROUP BY c.customer_id, c.name, b.branch_name
ORDER BY avg_transaction_amount DESC;

--High-Risk Customers with Overdue Loans and Low Account Balance

SELECT c.customer_id, c.name, l.loan_id, l.loan_amount, avg_balance.avg_balance
FROM loans l
JOIN customers c ON l.customer_id = c.customer_id
JOIN (
    SELECT customer_id, AVG(balance) AS avg_balance
    FROM account_activity
    GROUP BY customer_id
    HAVING AVG(balance) < 500
) avg_balance ON c.customer_id = avg_balance.customer_id
WHERE l.status = 'overdue'
ORDER BY avg_balance.avg_balance;




