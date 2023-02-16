# Bank Marketing Strategy
![banking](https://user-images.githubusercontent.com/97919969/219498934-7402fc5d-32fd-4a46-a425-6152d24827c3.jpeg)


# Business Problem
A leading bank wants to develop a customer segmentation to launch marketing campaign to specific group of customers. The bank has provided a Dataset summarized the usage behavior of about 9000 active credit card holders during the last 6 months.

 # Solution Strategy
 
- Create customer segmentation based on clear selection criteria.
- Make customer segmentation accessible to the operations team.
- Teach the operations team how to use the solution.
- Transfer knowledge to international bank Data Scientists.
- Recommend 3 business levers for each customer segment.

 # Solution Development
 - 1.0  Train a Machine Learning to define a metric to verify the model performance.
 - 2.0 Filter the variables that best fit to the model.
 - 3.0 Try to create features that will help the model perform.
 - 4.0 Indetify and remove outliers if necessary.
 - 5.0 Verify the space dimensionality. ( Embedding Definition ).
 - 6.0 Select the best features to the model.
 - 7.0 Verify whitch tested model had the best performance with the data.
 - 8.0 Perform a analysis of the clustres defined by the model.
 - 9.0 Perform exploratory data analysis with the insights to report to the business team.
 - 10.0 criate the architecture at AWS and  put the model into production.
 - 11.0 Teach the team how to use the model

# Attribute List:
###### - ID : Unique Identification Code of Credit Card holder.
###### - BALANCE : How much the customer spent on the credit card.
###### - BALANCE_FREQ : How frequently the Balance is updated, score between 0 and 1 (1 = frequently updated, 0 = not frequently updated).
###### - PURCHASES : Amount of purchases made from account.
###### - ONE_PURCHASES : Purchase amount done in one-go. 1X
###### - INSTALl_PURCHASES : Amount of purchase done in installment.
###### - CASH_ADV : Cash in advance given by the user. ( Loan )
###### - PURCHASES_FREQ : How frequently the Purchases are being made, score between 0 and 1 (1 = frequently purchased, 0 = not frequently purchased)
###### - ONE_PURCHASES_FREQ : How frequently Purchases are happening in one-go (1 = frequently purchased, 0 = not frequently purchased)
###### - PURCHASES_INSTALL_FREQ : How frequently purchases in installments are being done (1 = frequently done, 0 = not frequently done)
###### - CASH_ADV_FREQ : How frequently the cash in advance being paid
###### - CASH_ADVANCE_TRX : Number of Transactions made with "Cash in Advanced"
###### - PURCHASES_TRX : Numbe of purchase transactions made.
###### - CREDIT_LIMIT : Limit of Credit Card for user.
###### - PAYMENTS : Amount of Payment done by user.( The amount paid in excess of the invoice minimum )
###### - MIN_PAYMENTS : Minimum amount of payments made by user
###### - FULL_PAYMENT : Percent of full payment paid by user
###### - TENURE : Tenure of credit card service for user


# Three Data Insigths


H3. 90% of customers using the credit card.

H5 - 10% of cutomers takes the cash advance.

H6 - 30% of Customers just use card to borrow cash.
