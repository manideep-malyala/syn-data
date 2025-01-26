
## BANK_ACCOUNTS Table

### Query 1
**Natural Language Query**: List all account types with their interest rates
**SQL Query**:
```sql
SELECT account_type, interest_rate FROM bank_accounts;
```
**Expected Result**:
- Basic Savings Account, 2.50%
- Premium Savings Account, 4.00%
- Student Savings Account, 3.00%
- Senior Citizen Account, 5.50%

### Query 2
**Natural Language Query**: Find accounts with digital banking access
**SQL Query**:
```sql
SELECT account_type FROM bank_accounts WHERE digital_banking_access = TRUE;
```
**Expected Result**:
- Basic Savings Account
- Premium Savings Account
- Student Savings Account
- Senior Citizen Account

### Query 3
**Natural Language Query**: List accounts with free debit cards
**SQL Query**:
```sql
SELECT account_type FROM bank_accounts WHERE free_debit_card = TRUE;
```
**Expected Result**:
- Basic Savings Account
- Premium Savings Account
- Student Savings Account
- Senior Citizen Account

### Query 4
**Natural Language Query**: Find accounts with lowest minimum balance
**SQL Query**:
```sql
SELECT account_type, min_balance FROM bank_accounts ORDER BY min_balance ASC LIMIT 1;
```
**Expected Result**:
- Student Savings Account, 500.00

### Query 5
**Natural Language Query**: Show accounts with international transaction support
**SQL Query**:
```sql
SELECT account_type FROM bank_accounts WHERE international_transaction_support = TRUE;
```
**Expected Result**:
- Premium Savings Account

### Query 6
**Natural Language Query**: List accounts with highest interest rates
**SQL Query**:
```sql
SELECT account_type, interest_rate FROM bank_accounts ORDER BY interest_rate DESC LIMIT 3;
```
**Expected Result**:
- Senior Citizen Account, 5.50%
- Premium Savings Account, 4.00%
- Student Savings Account, 3.00%

### Query 7
**Natural Language Query**: Find accounts with no account maintenance fee
**SQL Query**:
```sql
SELECT account_type FROM bank_accounts WHERE account_maintenance_fee = 0;
```
**Expected Result**:
- Student Savings Account
- Senior Citizen Account

### Query 8
**Natural Language Query**: List accounts with overdraft facility
**SQL Query**:
```sql
SELECT account_type, overdraft_facility FROM bank_accounts WHERE overdraft_facility != 'Not Available';
```
**Expected Result**:
- Premium Savings Account, Limited
- Senior Citizen Account, Limited

### Query 9
**Natural Language Query**: Find accounts with high penalties for low balance
**SQL Query**:
```sql
SELECT account_type, penalty_for_low_balance FROM bank_accounts ORDER BY penalty_for_low_balance DESC LIMIT 2;
```
**Expected Result**:
- Premium Savings Account, 250.00
- Basic Savings Account, 100.00

### Query 10
**Natural Language Query**: Show accounts with linked benefits
**SQL Query**:
```sql
SELECT account_type, linked_benefits FROM bank_accounts WHERE linked_benefits IS NOT NULL;
```
**Expected Result**:
- Basic Savings Account: Basic passbook, SMS alerts
- Premium Savings Account: Platinum debit card, travel insurance, priority customer service
- Student Savings Account: Zero maintenance fee, education-focused benefits
- Senior Citizen Account: Higher interest rates, medical insurance, dedicated support
















## LOAN_DETAILS Table Queries

### Query 1
**Natural Language Query**: List all loan types with their interest rates
**SQL Query**:
```sql
SELECT loan_type, interest_rate FROM loan_details;
```
**Expected Result**:
- Home Loan, 8.50%
- Personal Loan, 12.50%
- Vehicle Loan, 9.25%
- Education Loan, 9.00%
- Agricultural Loan, 7.50%

### Query 2
**Natural Language Query**: Find loans with maximum loan amount over 5 million
**SQL Query**:
```sql
SELECT loan_type FROM loan_details WHERE max_loan_amount > 5000000;
```
**Expected Result**:
- Home Loan
- Education Loan

### Query 3
**Natural Language Query**: List loans with processing time less than 5 days
**SQL Query**:
```sql
SELECT loan_type FROM loan_details WHERE processing_time_days < 5;
```
**Expected Result**:
- Personal Loan

### Query 4
**Natural Language Query**: Find loans for people with CIBIL score above 700
**SQL Query**:
```sql
SELECT loan_type FROM loan_details WHERE cibil_score_min > 700;
```
**Expected Result**:
- Home Loan
- Personal Loan
- Vehicle Loan

### Query 5
**Natural Language Query**: Show loans for income above 250,000
**SQL Query**:
```sql
SELECT loan_type FROM loan_details WHERE income_min > 250000;
```
**Expected Result**:
- Home Loan
- Personal Loan
- Vehicle Loan

### Query 6
**Natural Language Query**: List loans with longest tenure
**SQL Query**:
```sql
SELECT loan_type, loan_tenure_max FROM loan_details ORDER BY loan_tenure_max DESC LIMIT 3;
```
**Expected Result**:
- Home Loan, 360 months
- Education Loan, 180 months
- Agricultural Loan, 120 months

### Query 7
**Natural Language Query**: Find loans with lowest processing fees
**SQL Query**:
```sql
SELECT loan_type, loan_processing_fee FROM loan_details ORDER BY loan_processing_fee ASC LIMIT 2;
```
**Expected Result**:
- Education Loan, 1000.00
- Student Loan, 3000.00

### Query 8
**Natural Language Query**: Show loans with highest late payment fees
**SQL Query**:
```sql
SELECT loan_type, loan_late_payment_fee FROM loan_details ORDER BY loan_late_payment_fee DESC LIMIT 2;
```
**Expected Result**:
- Personal Loan, 1000.00
- Home Loan, 500.00

### Query 9
**Natural Language Query**: List loans for agricultural purposes
**SQL Query**:
```sql
SELECT loan_type FROM loan_details WHERE loan_purpose LIKE '%Agricultural%';
```
**Expected Result**:
- Agricultural Loan

### Query 10
**Natural Language Query**: Find loans with prepayment option
**SQL Query**:
```sql
SELECT loan_type FROM loan_details WHERE loan_prepayment_fee > 0;
```
**Expected Result**:
- Home Loan
- Personal Loan
- Vehicle Loan
- Agricultural Loan




## FIXED_DEPOSITS Table Queries

### Query 1
**Natural Language Query**: List all fixed deposit types with their interest rates
**SQL Query**:
```sql
SELECT fd_type, interest_rate FROM fixed_deposits;
```
**Expected Result**:
- Regular Fixed Deposit, 6.50%
- Senior Citizen Fixed Deposit, 7.25%
- Tax Saving Fixed Deposit, 6.75%
- Flexi Fixed Deposit, 6.25%

### Query 2
**Natural Language Query**: Find fixed deposits with tax benefits
**SQL Query**:
```sql
SELECT fd_type FROM fixed_deposits WHERE tax_benefits = TRUE;
```
**Expected Result**:
- Senior Citizen Fixed Deposit
- Tax Saving Fixed Deposit

### Query 3
**Natural Language Query**: List fixed deposits with loan facility
**SQL Query**:
```sql
SELECT fd_type FROM fixed_deposits WHERE loan_facility = TRUE;
```
**Expected Result**:
- Regular Fixed Deposit
- Senior Citizen Fixed Deposit
- Flexi Fixed Deposit

### Query 4
**Natural Language Query**: Find fixed deposits with monthly interest payout
**SQL Query**:
```sql
SELECT fd_type FROM fixed_deposits WHERE interest_payout_frequency = 'Monthly';
```
**Expected Result**:
- Senior Citizen Fixed Deposit

### Query 5
**Natural Language Query**: Show fixed deposits with tenure between 12 and 60 months
**SQL Query**:
```sql
SELECT fd_type FROM fixed_deposits WHERE tenure_min >= 12 AND tenure_max <= 60;
```
**Expected Result**:
- Regular Fixed Deposit
- Flexi Fixed Deposit

### Query 6
**Natural Language Query**: List fixed deposits with highest interest rates
**SQL Query**:
```sql
SELECT fd_type, interest_rate FROM fixed_deposits ORDER BY interest_rate DESC LIMIT 2;
```
**Expected Result**:
- Senior Citizen Fixed Deposit, 7.25%
- Tax Saving Fixed Deposit, 6.75%

### Query 7
**Natural Language Query**: Find fixed deposits with lowest minimum deposit
**SQL Query**:
```sql
SELECT fd_type, minimum_deposit FROM fixed_deposits ORDER BY minimum_deposit ASC LIMIT 2;
```
**Expected Result**:
- Flexi Fixed Deposit, 25000.00
- Regular Fixed Deposit, 10000.00

### Query 8
**Natural Language Query**: Show fixed deposits with maximum deposit limit
**SQL Query**:
```sql
SELECT fd_type, maximum_deposit FROM fixed_deposits ORDER BY maximum_deposit DESC LIMIT 2;
```
**Expected Result**:
- Regular Fixed Deposit, 10000000.00
- Senior Citizen Fixed Deposit, 5000000.00

### Query 9
**Natural Language Query**: List fixed deposits with renewal option
**SQL Query**:
```sql
SELECT fd_type FROM fixed_deposits WHERE fd_renewal = TRUE;
```
**Expected Result**:
- Regular Fixed Deposit
- Senior Citizen Fixed Deposit
- Flexi Fixed Deposit

### Query 10
**Natural Language Query**: Find fixed deposits with nomination facility
**SQL Query**:
```sql
SELECT fd_type FROM fixed_deposits WHERE nomination_facility = TRUE;
```
**Expected Result**:
- Regular Fixed Deposit
- Senior Citizen Fixed Deposit
- Tax Saving Fixed Deposit
- Flexi Fixed Deposit








## CARDS Table Queries

### Query 1
**Natural Language Query**: List all card types and their names
**SQL Query**:
```sql
SELECT card_type, card_name FROM cards;
```
**Expected Result**:
- Debit, Basic Debit Card
- Debit, Student Debit Card
- Debit, Senior Citizen Debit Card
- Credit, Silver Credit Card
- Credit, Student Credit Card
- Credit, Senior Privilege Credit Card
- Credit, Travel Credit Card

### Query 2
**Natural Language Query**: Find credit cards with no annual fee
**SQL Query**:
```sql
SELECT card_name FROM cards WHERE card_type = 'Credit' AND annual_fee = 0;
```
**Expected Result**:
- Student Credit Card

### Query 3
**Natural Language Query**: List cards with cashback rate above 2%
**SQL Query**:
```sql
SELECT card_name FROM cards WHERE cashback_rate > 2;
```
**Expected Result**:
- Student Credit Card
- Senior Privilege Credit Card

### Query 4
**Natural Language Query**: Find debit cards linked to Student Savings Account
**SQL Query**:
```sql
SELECT card_name FROM cards WHERE linked_account_type = 'Student Savings Account';
```
**Expected Result**:
- Student Debit Card
- Student Credit Card

### Query 5
**Natural Language Query**: Show credit cards with credit limit above 100,000
**SQL Query**:
```sql
SELECT card_name FROM cards WHERE credit_limit > 100000;
```
**Expected Result**:
- Senior Privilege Credit Card
- Travel Credit Card

### Query 6
**Natural Language Query**: List cards with highest reward rates
**SQL Query**:
```sql
SELECT card_name, reward_rate FROM cards ORDER BY reward_rate DESC LIMIT 3;
```
**Expected Result**:
- Travel Credit Card, 3.00%
- Senior Privilege Credit Card, 2.00%
- Silver Credit Card, 1.00%

### Query 7
**Natural Language Query**: Find cards with foreign transaction fees
**SQL Query**:
```sql
SELECT card_name, foreign_transaction_fee FROM cards WHERE foreign_transaction_fee > 0 ORDER BY foreign_transaction_fee ASC;
```
**Expected Result**:
- Travel Credit Card, 1.50%
- Silver Credit Card, 2.50%
- Student Credit Card, 3.00%

### Query 8
**Natural Language Query**: Show cards with late payment fees
**SQL Query**:
```sql
SELECT card_name, late_payment_fee FROM cards ORDER BY late_payment_fee DESC LIMIT 3;
```
**Expected Result**:
- Senior Privilege Credit Card, 500.00
- Travel Credit Card, 750.00
- Silver Credit Card, 250.00

### Query 9
**Natural Language Query**: List credit cards for seniors
**SQL Query**:
```sql
SELECT card_name FROM cards WHERE card_name LIKE '%Senior%';
```
**Expected Result**:
- Senior Citizen Debit Card
- Senior Privilege Credit Card

### Query 10
**Natural Language Query**: Find cards with replacement fees
**SQL Query**:
```sql
SELECT card_name, replacement_fee FROM cards ORDER BY replacement_fee DESC LIMIT 3;
```
**Expected Result**:
- Travel Credit Card, 300.00
- Senior Privilege Credit Card, 200.00
- Silver Credit Card, 150.00



