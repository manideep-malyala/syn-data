CREATE TABLE bank_accounts (
    account_type VARCHAR(100) NOT NULL,
    account_features TEXT,
    interest_rate DECIMAL(5,2),
    min_balance DECIMAL(15,2),
    penalty_for_low_balance DECIMAL(15,2),
    account_maintenance_fee DECIMAL(15,2),
    overdraft_facility VARCHAR(50),
    overdraft_charges DECIMAL(15,2),
    account_closure_fee DECIMAL(15,2),
    free_debit_card BOOLEAN,
    digital_banking_access BOOLEAN,
    international_transaction_support BOOLEAN,
    linked_benefits VARCHAR(255),
    PRIMARY KEY (account_type)
);




INSERT INTO bank_accounts (
    account_type, 
    account_features, 
    interest_rate, 
    min_balance, 
    penalty_for_low_balance, 
    account_maintenance_fee, 
    overdraft_facility, 
    overdraft_charges, 
    account_closure_fee, 
    free_debit_card,
    digital_banking_access,
    international_transaction_support,
    linked_benefits
) VALUES 
(
    'Basic Savings Account',
    'Entry-level account for new bank customers, simple and straightforward',
    2.50,
    1000.00,
    100.00,
    50.00,
    'Not Available',
    0.00,
    500.00,
    TRUE,
    TRUE,
    FALSE,
    'Basic passbook, SMS alerts'
),
(
    'Premium Savings Account',
    'Higher interest rates, multiple banking benefits',
    4.00,
    10000.00,
    250.00,
    100.00,
    'Limited',
    500.00,
    750.00,
    TRUE,
    TRUE,
    TRUE,
    'Platinum debit card, travel insurance, priority customer service'
),
(
    'Student Savings Account',
    'Specially designed for students with low maintenance requirements',
    3.00,
    500.00,
    50.00,
    0.00,
    'Not Available',
    0.00,
    250.00,
    TRUE,
    TRUE,
    FALSE,
    'Zero maintenance fee, education-focused benefits'
),
(
    'Senior Citizen Account',
    'Tailored financial services for senior citizens',
    5.50,
    5000.00,
    100.00,
    0.00,
    'Limited',
    250.00,
    500.00,
    TRUE,
    TRUE,
    FALSE,
    'Higher interest rates, medical insurance, dedicated support'
);






CREATE TABLE loan_details (
    loan_type VARCHAR(100) NOT NULL,
    interest_rate DECIMAL(5,2),
    loan_tenure_min INT,
    loan_tenure_max INT,
    eligibility_criteria TEXT,
    cibil_score_min INT,
    income_min DECIMAL(15,2),
    max_loan_amount DECIMAL(15,2),
    loan_purpose VARCHAR(100),
    processing_time_days INT,
    documentation_required TEXT,
    loan_processing_fee DECIMAL(15,2),
    loan_late_payment_fee DECIMAL(15,2),
    loan_prepayment_fee DECIMAL(15,2),
    emi_bounce_fee DECIMAL(15,2),
    PRIMARY KEY (loan_type)
);



INSERT INTO loan_details (
    loan_type, 
    interest_rate, 
    loan_tenure_min, 
    loan_tenure_max, 
    eligibility_criteria, 
    cibil_score_min, 
    income_min, 
    max_loan_amount, 
    loan_purpose, 
    processing_time_days, 
    documentation_required, 
    loan_processing_fee, 
    loan_late_payment_fee, 
    loan_prepayment_fee, 
    emi_bounce_fee
) VALUES 
(
    'Home Loan',
    8.50,
    60,
    360,
    'Salaried/Self-employed professionals, age 23-65',
    750,
    300000.00,
    10000000.00,
    'Property Purchase/Construction',
    7,
    'Income proof, Property documents, Identity/Address proof',
    5000.00,
    500.00,
    2000.00,
    1000.00
),
(
    'Personal Loan',
    12.50,
    12,
    60,
    'Salaried employees in private/public sector',
    700,
    250000.00,
    2500000.00,
    'Personal Expenses/Debt Consolidation',
    3,
    'Salary slips, Bank statements, Identity proof',
    3000.00,
    1000.00,
    1500.00,
    750.00
),
(
    'Vehicle Loan',
    9.25,
    12,
    84,
    'Salaried/Self-employed with steady income',
    700,
    200000.00,
    2000000.00,
    'Two/Four Wheeler Purchase',
    5,
    'Income proof, Vehicle details, Address proof',
    2500.00,
    250.00,
    1000.00,
    500.00
),
(
    'Education Loan',
    9.00,
    60,
    180,
    'Students pursuing higher education',
    650,
    150000.00,
    5000000.00,
    'Higher Studies in India/Abroad',
    10,
    'Admission letter, Academic records, Parental income proof',
    1000.00,
    250.00,
    500.00,
    250.00
),
(
    'Agricultural Loan',
    7.50,
    36,
    120,
    'Farmers with cultivable land',
    650,
    100000.00,
    1500000.00,
    'Agricultural Equipment/Land Development',
    15,
    'Land ownership documents, Cultivation details',
    2000.00,
    200.00,
    750.00,
    300.00
);






CREATE TABLE fixed_deposits (
    fd_type VARCHAR(100) NOT NULL,
    interest_rate DECIMAL(5,2),
    minimum_deposit DECIMAL(15,2),
    maximum_deposit DECIMAL(15,2),
    tenure_min INT,
    tenure_max INT,
    early_withdrawal_penalty DECIMAL(15,2),
    loan_facility BOOLEAN,
    loan_interest_rate DECIMAL(5,2),
    fd_renewal BOOLEAN,
    premature_closure_penalty DECIMAL(15,2),
    tax_benefits BOOLEAN,
    nomination_facility BOOLEAN,
    interest_payout_frequency VARCHAR(50),
    PRIMARY KEY (fd_type)
);




INSERT INTO fixed_deposits (
   fd_type, 
   interest_rate, 
   minimum_deposit, 
   maximum_deposit, 
   tenure_min, 
   tenure_max, 
   early_withdrawal_penalty, 
   loan_facility, 
   loan_interest_rate, 
   fd_renewal, 
   premature_closure_penalty,
   tax_benefits,
   nomination_facility,
   interest_payout_frequency
) VALUES 
(
   'Regular Fixed Deposit',
   6.50,
   10000.00,
   10000000.00,
   12,
   60,
   1000.00,
   TRUE,
   8.50,
   TRUE,
   2000.00,
   FALSE,
   TRUE,
   'Quarterly'
),
(
   'Senior Citizen Fixed Deposit',
   7.25,
   50000.00,
   5000000.00,
   12,
   120,
   750.00,
   TRUE,
   8.00,
   TRUE,
   1500.00,
   TRUE,
   TRUE,
   'Monthly'
),
(
   'Tax Saving Fixed Deposit',
   6.75,
   100000.00,
   1500000.00,
   60,
   60,
   0.00,
   FALSE,
   0.00,
   FALSE,
   0.00,
   TRUE,
   TRUE,
   'At Maturity'
),
(
   'Flexi Fixed Deposit',
   6.25,
   25000.00,
   2000000.00,
   6,
   36,
   1500.00,
   TRUE,
   8.75,
   TRUE,
   2500.00,
   FALSE,
   TRUE,
   'Half-Yearly'
);


CREATE TABLE cards (
    card_type VARCHAR(100) NOT NULL,
    card_name VARCHAR(100) NOT NULL,
    card_features TEXT,
    annual_fee DECIMAL(15,2),
    renewal_fee DECIMAL(15,2),
    foreign_transaction_fee DECIMAL(5,2),
    reward_rate DECIMAL(5,2),
    cashback_rate DECIMAL(5,2),
    credit_limit DECIMAL(15,2),
    interest_rate DECIMAL(5,2),
    late_payment_fee DECIMAL(15,2),
    replacement_fee DECIMAL(15,2),
    eligibility_criteria TEXT,
    linked_account_type VARCHAR(100),
    benefits TEXT,
    PRIMARY KEY (card_type, card_name)
);


CREATE TABLE bank_accounts (
    account_type VARCHAR(100) NOT NULL,
    account_features TEXT,
    interest_rate DECIMAL(5,2),
    min_balance DECIMAL(15,2),
    penalty_for_low_balance DECIMAL(15,2),
    account_maintenance_fee DECIMAL(15,2),
    overdraft_facility VARCHAR(50),
    overdraft_charges DECIMAL(15,2),
    account_closure_fee DECIMAL(15,2),
    free_debit_card BOOLEAN,
    digital_banking_access BOOLEAN,
    international_transaction_support BOOLEAN,
    linked_benefits VARCHAR(255),
    PRIMARY KEY (account_type)
);




INSERT INTO bank_accounts (
    account_type, 
    account_features, 
    interest_rate, 
    min_balance, 
    penalty_for_low_balance, 
    account_maintenance_fee, 
    overdraft_facility, 
    overdraft_charges, 
    account_closure_fee, 
    free_debit_card,
    digital_banking_access,
    international_transaction_support,
    linked_benefits
) VALUES 
(
    'Basic Savings Account',
    'Entry-level account for new bank customers, simple and straightforward',
    2.50,
    1000.00,
    100.00,
    50.00,
    'Not Available',
    0.00,
    500.00,
    TRUE,
    TRUE,
    FALSE,
    'Basic passbook, SMS alerts'
),
(
    'Premium Savings Account',
    'Higher interest rates, multiple banking benefits',
    4.00,
    10000.00,
    250.00,
    100.00,
    'Limited',
    500.00,
    750.00,
    TRUE,
    TRUE,
    TRUE,
    'Platinum debit card, travel insurance, priority customer service'
),
(
    'Student Savings Account',
    'Specially designed for students with low maintenance requirements',
    3.00,
    500.00,
    50.00,
    0.00,
    'Not Available',
    0.00,
    250.00,
    TRUE,
    TRUE,
    FALSE,
    'Zero maintenance fee, education-focused benefits'
),
(
    'Senior Citizen Account',
    'Tailored financial services for senior citizens',
    5.50,
    5000.00,
    100.00,
    0.00,
    'Limited',
    250.00,
    500.00,
    TRUE,
    TRUE,
    FALSE,
    'Higher interest rates, medical insurance, dedicated support'
);






CREATE TABLE loan_details (
    loan_type VARCHAR(100) NOT NULL,
    interest_rate DECIMAL(5,2),
    loan_tenure_min INT,
    loan_tenure_max INT,
    eligibility_criteria TEXT,
    cibil_score_min INT,
    income_min DECIMAL(15,2),
    max_loan_amount DECIMAL(15,2),
    loan_purpose VARCHAR(100),
    processing_time_days INT,
    documentation_required TEXT,
    loan_processing_fee DECIMAL(15,2),
    loan_late_payment_fee DECIMAL(15,2),
    loan_prepayment_fee DECIMAL(15,2),
    emi_bounce_fee DECIMAL(15,2),
    PRIMARY KEY (loan_type)
);



INSERT INTO loan_details (
    loan_type, 
    interest_rate, 
    loan_tenure_min, 
    loan_tenure_max, 
    eligibility_criteria, 
    cibil_score_min, 
    income_min, 
    max_loan_amount, 
    loan_purpose, 
    processing_time_days, 
    documentation_required, 
    loan_processing_fee, 
    loan_late_payment_fee, 
    loan_prepayment_fee, 
    emi_bounce_fee
) VALUES 
(
    'Home Loan',
    8.50,
    60,
    360,
    'Salaried/Self-employed professionals, age 23-65',
    750,
    300000.00,
    10000000.00,
    'Property Purchase/Construction',
    7,
    'Income proof, Property documents, Identity/Address proof',
    5000.00,
    500.00,
    2000.00,
    1000.00
),
(
    'Personal Loan',
    12.50,
    12,
    60,
    'Salaried employees in private/public sector',
    700,
    250000.00,
    2500000.00,
    'Personal Expenses/Debt Consolidation',
    3,
    'Salary slips, Bank statements, Identity proof',
    3000.00,
    1000.00,
    1500.00,
    750.00
),
(
    'Vehicle Loan',
    9.25,
    12,
    84,
    'Salaried/Self-employed with steady income',
    700,
    200000.00,
    2000000.00,
    'Two/Four Wheeler Purchase',
    5,
    'Income proof, Vehicle details, Address proof',
    2500.00,
    250.00,
    1000.00,
    500.00
),
(
    'Education Loan',
    9.00,
    60,
    180,
    'Students pursuing higher education',
    650,
    150000.00,
    5000000.00,
    'Higher Studies in India/Abroad',
    10,
    'Admission letter, Academic records, Parental income proof',
    1000.00,
    250.00,
    500.00,
    250.00
),
(
    'Agricultural Loan',
    7.50,
    36,
    120,
    'Farmers with cultivable land',
    650,
    100000.00,
    1500000.00,
    'Agricultural Equipment/Land Development',
    15,
    'Land ownership documents, Cultivation details',
    2000.00,
    200.00,
    750.00,
    300.00
);






CREATE TABLE fixed_deposits (
    fd_type VARCHAR(100) NOT NULL,
    interest_rate DECIMAL(5,2),
    minimum_deposit DECIMAL(15,2),
    maximum_deposit DECIMAL(15,2),
    tenure_min INT,
    tenure_max INT,
    early_withdrawal_penalty DECIMAL(15,2),
    loan_facility BOOLEAN,
    loan_interest_rate DECIMAL(5,2),
    fd_renewal BOOLEAN,
    premature_closure_penalty DECIMAL(15,2),
    tax_benefits BOOLEAN,
    nomination_facility BOOLEAN,
    interest_payout_frequency VARCHAR(50),
    PRIMARY KEY (fd_type)
);




INSERT INTO fixed_deposits (
   fd_type, 
   interest_rate, 
   minimum_deposit, 
   maximum_deposit, 
   tenure_min, 
   tenure_max, 
   early_withdrawal_penalty, 
   loan_facility, 
   loan_interest_rate, 
   fd_renewal, 
   premature_closure_penalty,
   tax_benefits,
   nomination_facility,
   interest_payout_frequency
) VALUES 
(
   'Regular Fixed Deposit',
   6.50,
   10000.00,
   10000000.00,
   12,
   60,
   1000.00,
   TRUE,
   8.50,
   TRUE,
   2000.00,
   FALSE,
   TRUE,
   'Quarterly'
),
(
   'Senior Citizen Fixed Deposit',
   7.25,
   50000.00,
   5000000.00,
   12,
   120,
   750.00,
   TRUE,
   8.00,
   TRUE,
   1500.00,
   TRUE,
   TRUE,
   'Monthly'
),
(
   'Tax Saving Fixed Deposit',
   6.75,
   100000.00,
   1500000.00,
   60,
   60,
   0.00,
   FALSE,
   0.00,
   FALSE,
   0.00,
   TRUE,
   TRUE,
   'At Maturity'
),
(
   'Flexi Fixed Deposit',
   6.25,
   25000.00,
   2000000.00,
   6,
   36,
   1500.00,
   TRUE,
   8.75,
   TRUE,
   2500.00,
   FALSE,
   TRUE,
   'Half-Yearly'
);


CREATE TABLE cards (
    card_type VARCHAR(100) NOT NULL,
    card_name VARCHAR(100) NOT NULL,
    card_features TEXT,
    annual_fee DECIMAL(15,2),
    renewal_fee DECIMAL(15,2),
    foreign_transaction_fee DECIMAL(5,2),
    reward_rate DECIMAL(5,2),
    cashback_rate DECIMAL(5,2),
    credit_limit DECIMAL(15,2),
    interest_rate DECIMAL(5,2),
    late_payment_fee DECIMAL(15,2),
    replacement_fee DECIMAL(15,2),
    eligibility_criteria TEXT,
    linked_account_type VARCHAR(100),
    benefits TEXT,
    PRIMARY KEY (card_type, card_name)
);

INSERT INTO cards (
    card_type, 
    card_name, 
    card_features, 
    annual_fee, 
    renewal_fee, 
    foreign_transaction_fee, 
    reward_rate, 
    cashback_rate, 
    credit_limit, 
    interest_rate, 
    late_payment_fee, 
    replacement_fee, 
    eligibility_criteria, 
    linked_account_type, 
    benefits
) VALUES
-- Debit Cards
(
    'Debit',
    'Basic Debit Card',
    'Standard transactions, Basic withdrawal limit',
    0.00,
    0.00,
    3.00,
    0.00,
    0.50,
    NULL,
    NULL,
    50.00,
    100.00,
    'Minimum balance of 1,000 in linked account',
    'Basic Savings Account',
    'Free passbook, Basic SMS alerts'
),
(
    'Debit',
    'Student Debit Card',
    'Special benefits for students, Moderate withdrawal limit',
    0.00,
    0.00,
    2.50,
    0.00,
    1.00,
    NULL,
    NULL,
    0.00,
    50.00,
    'Minimum balance of 500 in linked account',
    'Student Savings Account',
    'Free education-focused benefits, Discounts on educational services'
),
(
    'Debit',
    'Senior Citizen Debit Card',
    'Enhanced security, Priority ATM access',
    200.00,
    200.00,
    2.00,
    0.00,
    0.50,
    NULL,
    NULL,
    100.00,
    150.00,
    'Minimum balance of 5,000 in linked account',
    'Senior Citizen Account',
    'Priority customer service, Medical insurance benefits'
),

-- Credit Cards
(
    'Credit',
    'Silver Credit Card',
    'Low annual fee, Moderate credit limit, Fuel cashback',
    500.00,
    500.00,
    2.50,
    1.00,
    1.50,
    50000.00,
    13.00,
    250.00,
    150.00,
    'Minimum income of 3,00,000 per annum, CIBIL score of 700+',
    'Basic Savings Account',
    'Cashback on groceries, Fuel surcharge waiver'
),
(
    'Credit',
    'Student Credit Card',
    'Low limit, Cashback on educational purchases, EMI options',
    0.00,
    0.00,
    3.00,
    0.50,
    2.00,
    20000.00,
    14.00,
    200.00,
    100.00,
    'Linked to active Student Savings Account, CIBIL score not mandatory',
    'Student Savings Account',
    'Educational benefits, Free subscription to study materials'
),
(
    'Credit',
    'Senior Privilege Credit Card',
    'Higher limit, Travel and medical benefits, EMI facility',
    750.00,
    750.00,
    2.00,
    2.00,
    3.00,
    150000.00,
    12.00,
    500.00,
    200.00,
    'Minimum income of 4,00,000 per annum, Age 60+, CIBIL score of 700+',
    'Senior Citizen Account',
    'Medical expense coverage, Lounge access, Concierge services'
),
(
    'Credit',
    'Travel Credit Card',
    'High credit limit, Travel rewards, Airport lounge access',
    1500.00,
    1500.00,
    1.50,
    3.00,
    2.50,
    300000.00,
    11.50,
    750.00,
    300.00,
    'Minimum income of 6,00,000 per annum, CIBIL score of 750+',
    'Premium Savings Account',
    'Priority boarding, Travel insurance, Dining offers'
);






