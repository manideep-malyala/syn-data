-- Table name: Revenue
-- Purpose: This table tracks the revenue generated from various services like mobile, broadband, device sales, and other business lines.

CREATE TABLE Revenue (
    revenue_id INT PRIMARY KEY, -- Unique ID for the revenue record
    revenue_type VARCHAR(255), -- Type of revenue (e.g., Mobile, Broadband, Device Sales, etc.)
    amount DECIMAL(15, 2) -- Total revenue amount (e.g., mobile revenue in millions) | Data from 2020 to 2024
    date DATE -- Date of revenue recording | Data from 2020 to 2024
);



-- Table name: Operating_Expenses
-- Purpose: This table tracks the operational costs incurred by the company across various departments.

CREATE TABLE Operating_Expenses (
    expense_id INT PRIMARY KEY, -- Unique ID for the expense record
    expense_type VARCHAR(255), -- Type of expense (e.g., Marketing, Salaries, Network Maintenance, etc.)
    amount DECIMAL(15, 2) -- Amount of the expense | Data from 2020 to 2024
    date DATE -- Date of the expense recorded | Data from 2020 to 2024
    department VARCHAR(255) -- Department responsible for the expense (e.g., Marketing, HR, Sales)
);



-- TABLE NAME: LIABILITIES
-- PURPOSE: THIS TABLE TRACKS LIABILITIES SUCH AS LOANS, PAYABLES, ETC., THAT THE COMPANY OWES. [DATA FROM 2020 TO 2024]

CREATE TABLE Liabilities (
    liability_id INT PRIMARY KEY, -- Unique ID for the liability record
    liability_type VARCHAR(255), -- Type of liability (e.g., Short-term loan, Long-term debt) [Data from 2020 to 2024]
    amount DECIMAL(15, 2), -- Liability amount (e.g., loan amount, payable bills) [Data from 2020 to 2024]
    due_date DATE, -- Date when the liability is due [Data from 2020 to 2024]
    interest_rate DECIMAL(5, 2) -- Interest rate for loans or credit lines [Data from 2020 to 2024]
);




-- 2020
INSERT INTO Revenue (revenue_id, revenue_type, amount, date) VALUES
(1, 'Mobile Voice Revenue', 100000000.00, '2020-03-31'),
(2, 'Mobile Data Revenue', 35000000.00, '2020-06-30'),
(3, 'Broadband Revenue', 27000000.00, '2020-09-30'),
(4, 'Device Sales Revenue', 8500000.00, '2020-12-31'),
(5, 'Enterprise Solutions Revenue', 21000000.00, '2020-12-31');

-- 2021
INSERT INTO Revenue (revenue_id, revenue_type, amount, date) VALUES
(6, 'Mobile Voice Revenue', 110000000.00, '2021-03-31'),
(7, 'Mobile Data Revenue', 38000000.00, '2021-06-30'),
(8, 'Broadband Revenue', 29000000.00, '2021-09-30'),
(9, 'Device Sales Revenue', 9000000.00, '2021-12-31'),
(10, 'Enterprise Solutions Revenue', 22000000.00, '2021-12-31');

-- 2022
INSERT INTO Revenue (revenue_id, revenue_type, amount, date) VALUES
(11, 'Mobile Voice Revenue', 120000000.00, '2022-03-31'),
(12, 'Mobile Data Revenue', 41000000.00, '2022-06-30'),
(13, 'Broadband Revenue', 31000000.00, '2022-09-30'),
(14, 'Device Sales Revenue', 9500000.00, '2022-12-31'),
(15, 'Enterprise Solutions Revenue', 24000000.00, '2022-12-31');

-- 2023
INSERT INTO Revenue (revenue_id, revenue_type, amount, date) VALUES
(16, 'Mobile Voice Revenue', 130000000.00, '2023-03-31'),
(17, 'Mobile Data Revenue', 44000000.00, '2023-06-30'),
(18, 'Broadband Revenue', 33000000.00, '2023-09-30'),
(19, 'Device Sales Revenue', 10000000.00, '2023-12-31'),
(20, 'Enterprise Solutions Revenue', 25000000.00, '2023-12-31');

-- 2024
INSERT INTO Revenue (revenue_id, revenue_type, amount, date) VALUES
(21, 'Mobile Voice Revenue', 140000000.00, '2024-03-31'),
(22, 'Mobile Data Revenue', 47000000.00, '2024-06-30'),
(23, 'Broadband Revenue', 35000000.00, '2024-09-30'),
(24, 'Device Sales Revenue', 10500000.00, '2024-12-31'),
(25, 'Enterprise Solutions Revenue', 26000000.00, '2024-12-31');





-- 2020
INSERT INTO Operating_Expenses (expense_id, expense_type, amount, date, department) VALUES
(1, 'Salaries', 50000000.00, '2020-03-31', 'HR'),
(2, 'Marketing', 15000000.00, '2020-03-31', 'Marketing'),
(3, 'Network Maintenance', 12000000.00, '2020-06-30', 'Network'),
(4, 'R&D', 8000000.00, '2020-09-30', 'R&D'),
(5, 'Customer Acquisition', 7000000.00, '2020-12-31', 'Sales');

-- 2021
INSERT INTO Operating_Expenses (expense_id, expense_type, amount, date, department) VALUES
(6, 'Salaries', 52000000.00, '2021-03-31', 'HR'),
(7, 'Marketing', 16000000.00, '2021-03-31', 'Marketing'),
(8, 'Network Maintenance', 13000000.00, '2021-06-30', 'Network'),
(9, 'R&D', 8500000.00, '2021-09-30', 'R&D'),
(10, 'Customer Acquisition', 7500000.00, '2021-12-31', 'Sales');

-- 2022
INSERT INTO Operating_Expenses (expense_id, expense_type, amount, date, department) VALUES
(11, 'Salaries', 55000000.00, '2022-03-31', 'HR'),
(12, 'Marketing', 17000000.00, '2022-03-31', 'Marketing'),
(13, 'Network Maintenance', 14000000.00, '2022-06-30', 'Network'),
(14, 'R&D', 9000000.00, '2022-09-30', 'R&D'),
(15, 'Customer Acquisition', 8000000.00, '2022-12-31', 'Sales');

-- 2023
INSERT INTO Operating_Expenses (expense_id, expense_type, amount, date, department) VALUES
(16, 'Salaries', 58000000.00, '2023-03-31', 'HR'),
(17, 'Marketing', 18000000.00, '2023-03-31', 'Marketing'),
(18, 'Network Maintenance', 15000000.00, '2023-06-30', 'Network'),
(19, 'R&D', 9500000.00, '2023-09-30', 'R&D'),
(20, 'Customer Acquisition', 8500000.00, '2023-12-31', 'Sales');

-- 2024
INSERT INTO Operating_Expenses (expense_id, expense_type, amount, date, department) VALUES
(21, 'Salaries', 60000000.00, '2024-03-31', 'HR'),
(22, 'Marketing', 19000000.00, '2024-03-31', 'Marketing'),
(23, 'Network Maintenance', 16000000.00, '2024-06-30', 'Network'),
(24, 'R&D', 10000000.00, '2024-09-30', 'R&D'),
(25, 'Customer Acquisition', 9000000.00, '2024-12-31', 'Sales');




-- 2020
INSERT INTO Liabilities (liability_id, liability_type, amount, due_date, interest_rate) VALUES
(1, 'Short-term loan', 5000000.00, '2020-06-30', 4.50),
(2, 'Long-term debt', 20000000.00, '2025-12-31', 5.25),
(3, 'Vendor payables', 12000000.00, '2020-04-15', 0.00),
(4, 'Accounts payable', 8000000.00, '2020-03-31', 0.00),
(5, 'Bank overdrafts', 2000000.00, '2020-07-15', 6.00);

-- 2021
INSERT INTO Liabilities (liability_id, liability_type, amount, due_date, interest_rate) VALUES
(6, 'Short-term loan', 6000000.00, '2021-06-30', 4.50),
(7, 'Long-term debt', 22000000.00, '2026-12-31', 5.25),
(8, 'Vendor payables', 14000000.00, '2021-05-15', 0.00),
(9, 'Accounts payable', 10000000.00, '2021-04-30', 0.00),
(10, 'Bank overdrafts', 3000000.00, '2021-07-15', 5.80);

-- 2022
INSERT INTO Liabilities (liability_id, liability_type, amount, due_date, interest_rate) VALUES
(11, 'Short-term loan', 7000000.00, '2022-06-30', 4.75),
(12, 'Long-term debt', 24000000.00, '2027-12-31', 5.50),
(13, 'Vendor payables', 16000000.00, '2022-05-15', 0.00),
(14, 'Accounts payable', 11000000.00, '2022-04-30', 0.00),
(15, 'Bank overdrafts', 3500000.00, '2022-07-15', 6.00);

-- 2023
INSERT INTO Liabilities (liability_id, liability_type, amount, due_date, interest_rate) VALUES
(16, 'Short-term loan', 8000000.00, '2023-06-30', 4.75),
(17, 'Long-term debt', 26000000.00, '2028-12-31', 5.50),
(18, 'Vendor payables', 18000000.00, '2023-05-15', 0.00),
(19, 'Accounts payable', 12000000.00, '2023-04-30', 0.00),
(20, 'Bank overdrafts', 4000000.00, '2023-07-15', 6.00);

-- 2024
INSERT INTO Liabilities (liability_id, liability_type, amount, due_date, interest_rate) VALUES
(21, 'Short-term loan', 9000000.00, '2024-06-30', 4.75),
(22, 'Long-term debt', 28000000.00, '2029-12-31', 5.75),
(23, 'Vendor payables', 20000000.00, '2024-05-15', 0.00),
(24, 'Accounts payable', 13000000.00, '2024-04-30', 0.00),
(25, 'Bank overdrafts', 4500000.00, '2024-07-15', 5.90);




