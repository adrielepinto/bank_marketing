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

# Assumptions:


- NA - Minimum Payment had 313 NA's, I assumed as 0 for not lose 313 customers whitch can be valueble customer.
- Gross Revenue Variable - I calculated gross revenue assuming that the bank receives 3% of the value of each transaction.
- Outliers - On Outliers analysis, I I found very disbelieving values, such as customers who paid a minimum payment about of 8k, whitch doesn't make sense, since theres no payments made over than 50721.48. So, for a best model acuracy I removed the outliers.
- The feature selection was made by using the correlation map.

# Three Data Insigths


H3. 90% of customers using the credit card.
<img width="674" alt="Screen Shot 2023-02-16 at 3 53 08 PM" src="https://user-images.githubusercontent.com/97919969/219514216-cc6dbf13-d074-4682-a8d4-aa27f07e9d62.png">

False - Just 76.29% Are using the credit card. There are 23% of customers from database tht aren't using the credit card for purchases. 

H5 - 10% of cutomers takes the cash advance.
<img width="771" alt="Screen Shot 2023-02-16 at 3 58 00 PM" src="https://user-images.githubusercontent.com/97919969/219514832-3bd2b270-2b55-45a4-ac90-538d6df7fdca.png">


False - 46.95% of Customers are taking the cash adv.  Almost half of the customers are using the credit card as loan.

H6 - 30% of Customers just use card to borrow cash.
<img width="959" alt="Screen Shot 2023-02-16 at 4 01 55 PM" src="https://user-images.githubusercontent.com/97919969/219515269-5aecf8ab-4540-444f-9a44-07ea3f1eca97.png">


False - 21% of customers are using the card just to borrow cash.  
 # Tested Machine Learning Models
 
 - KMeans;
 - Davies-Bouldin score;
 - DBScan
 - Hierarchical (HC); 
 - Gaussian Mixture Model (GMM)
# Machine Learning Models Performance
<img width="1051" alt="Screen Shot 2023-02-16 at 4 12 48 PM" src="https://user-images.githubusercontent.com/97919969/219516779-ecb096fa-bd02-4816-9cfb-7ec2c37815cf.png">


The model performance result is separated from the database into nine clusters, according to the similarities of each customer. Towards of all tested machine learning tools, the GMMM has showed a good metric for the nine clusters. However, the Davies-Bouldin metric presents a considerably excellent performance in comparison with the other tested models. HC and KMeans also performed considerably well, but unfortunately these values are for fifteen clusters, which will make it difficult for the market team to manage so many clusters. Therefore, the model applied for the final clustering is the Davies-Bouldin score.


# Model Performance Results
<img width="430" alt="Screen Shot 2023-02-16 at 4 58 53 PM" src="https://user-images.githubusercontent.com/97919969/219522478-60c3161b-5b9e-4ab2-8d74-e905396a2568.png">

This is the real result of how much return each cluster will bring to the company. In view of this, it is easy to identify which customers actually pay the company's bills.
