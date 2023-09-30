# Bank Marketing Strategy
![banking](https://user-images.githubusercontent.com/97919969/219498934-7402fc5d-32fd-4a46-a425-6152d24827c3.jpeg)

NOTE: The business context is fictitious, however all planning and development of the solution is implemented following all the steps of a real market project. You can follow the entire development of the project on notebook [c9.0-pa006-EDA.ipynb](https://github.com/adrielepinto/bank_marketing/blob/bank/notebooks/c9.0-pa006-EDA.ipynb)

# 1.0  Business Problem

International Bank is an international bank that provides financial products, such as loans, current accounts, savings accounts, investment options, credit cards, etc.
  Every quarter of the year, leaders meet to decide the company's objectives for the next 3 months. At this last meeting, one of the goals decided was the creation of a marketing strategy to approach customers who use credit cards.
The company has a set of data on the usage behavior of approximately 9000 active credit card users over the last 6 months and the file is at the customer level and has 18 behavioral variables.

Therefore, it was decided to create a customer segmentation that will direct the marketing strategy and the expected results of this work are:

- 1.Create customer segmentation based on clear selection criteria.
  
- 2. Make customer segmentation accessible to the operations team.
    
- 3. Recommend 2-3 business levers for each customer segment.
 
## 1.1 Business Understanding

Business Problem/Question: What?

- Analyze customers who has credit cards.

Root Cause of the Problem: Why carry out this project?

- Carry out strategic marketing for each type of customer.

## 1.2 Data
The data for this project is available on the [Kaggle platform](https://www.kaggle.com/datasets/janiobachmann/bank-marketing-dataset).

### 1.2.1 Attribute List:

- ID : Unique Identification Code of Credit Card holder.
 - BALANCE : How much the customer spent on the credit card.
 - BALANCE_FREQ : How frequently the Balance is updated, score between 0 and 1 (1 = frequently updated, 0 = not frequently updated).
 - PURCHASES : Amount of purchases made from account.
- ONE_PURCHASES : Purchase amount done in one-go. 1X
- INSTALl_PURCHASES : Amount of purchase done in installment.
 - CASH_ADV : Cash in advance given by the user. ( Loan )
 - PURCHASES_FREQ : How frequently the Purchases are being made, score between 0 and 1 (1 = frequently purchased, 0 = not frequently purchased)
 - ONE_PURCHASES_FREQ : How frequently Purchases are happening in one-go (1 = frequently purchased, 0 = not frequently purchased)
 - PURCHASES_INSTALL_FREQ : How frequently purchases in installments are being done (1 = frequently done, 0 = not frequently done)
 - CASH_ADV_FREQ : How frequently the cash in advance being paid
 - CASH_ADVANCE_TRX : Number of Transactions made with "Cash in Advanced"
 - PURCHASES_TRX : Numbe of purchase transactions made.
 - CREDIT_LIMIT : Limit of Credit Card for user.
 - PAYMENTS : Amount of Payment done by user.( The amount paid in excess of the invoice minimum )
- MIN_PAYMENTS : Minimum amount of payments made by user
- FULL_PAYMENT : Percent of full payment paid by user
 - TENURE : Tenure of credit card service for user


# 2.0 Solution Planning
 
The technique used to solve this problem was end-to-end method.

This process, objectively and quickly, allows you to deliver value to the business.
In the first cycle of the project, surface cleaning is carried out, an algorithm is chosen to model the data, and a metric is chosen to measure how much the model is improving or worsening. The objective is that in each cycle, modifications are made to the project to improve the accuracy of the model. Therefore, in the first cycle, the business already has a first version of the project, which will be improved with each cycle, to assist in decision making.

![endto](https://github.com/adrielepinto/clustering/assets/97919969/8e3b901e-a424-4b1d-8d62-252444396c2d)


## 2.1 Solution Development
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



# 3.0 Business Assumptions:


- NA - Minimum Payment had 313 NA's, I assumed as 0 for not lose 313 customers whitch can be valueble customer.
  
- Gross Revenue Variable - I calculated gross revenue assuming that the bank receives 3% of the value of each transaction.
  
- Outliers - On Outliers analysis, I I found very disbelieving values, such as customers who paid a minimum payment about of 8k, whitch doesn't make sense, since theres no payments made over than 50721.48. So, for a best model acuracy I removed the outliers.
  
- The feature selection was made by using the correlation map.

# 4.0  Three Data Insigths


H3. 90% of customers using the credit card.
<img width="674" alt="Screen Shot 2023-02-16 at 3 53 08 PM" src="https://user-images.githubusercontent.com/97919969/219514216-cc6dbf13-d074-4682-a8d4-aa27f07e9d62.png">

False - Just 76.29% Are using the credit card. There are 23% of customers from database tht aren't using the credit card for purchases. 

H5 - 10% of cutomers takes the cash advance.
<img width="771" alt="Screen Shot 2023-02-16 at 3 58 00 PM" src="https://user-images.githubusercontent.com/97919969/219514832-3bd2b270-2b55-45a4-ac90-538d6df7fdca.png">


False - 46.95% of Customers are taking the cash adv.  Almost half of the customers are using the credit card as loan.

H6 - 30% of Customers just use card to borrow cash.
<img width="959" alt="Screen Shot 2023-02-16 at 4 01 55 PM" src="https://user-images.githubusercontent.com/97919969/219515269-5aecf8ab-4540-444f-9a44-07ea3f1eca97.png">


False - 21% of customers are using the card just to borrow cash.  
 # 5.0 Tested Machine Learning Models
 
 - KMeans;
 - Davies-Bouldin score;
 - DBScan
 - Hierarchical (HC); 
 - Gaussian Mixture Model (GMM)
 - 
## 7.0 Machine Learning Models Performance
<img width="1051" alt="Screen Shot 2023-02-16 at 4 12 48 PM" src="https://user-images.githubusercontent.com/97919969/219516779-ecb096fa-bd02-4816-9cfb-7ec2c37815cf.png">


The model performance result is separated from the database into nine clusters, according to the similarities of each customer. Towards of all tested machine learning tools, the GMMM has showed a good metric for the nine clusters. However, the Davies-Bouldin metric presents a considerably excellent performance in comparison with the other tested models. HC and KMeans also performed considerably well, but unfortunately these values are for fifteen clusters, which will make it difficult for the market team to manage so many clusters. Therefore, the model applied for the final clustering is the Davies-Bouldin score.


# 8.0 Model Performance Results
<img width="430" alt="Screen Shot 2023-02-16 at 4 58 53 PM" src="https://user-images.githubusercontent.com/97919969/219522478-60c3161b-5b9e-4ab2-8d74-e905396a2568.png">

This is the real result of how much return each cluster will bring to the company. In view of this, it is easy to identify which customers actually pay the company's bills.


# 9.0  Business Levers:
- 1. There are 1642 customers who use their credit card just for purchases only. The Marketing team could offer/create loan services instead of offering credit cards to these customers. in which will lower the cost of acquiring more cards.

- Cluster 0 are the customers who buy the most quantity of products, however it is the one that brings the least value of revenue to the company. These customers are likely to buy cheap products, so the marketing team could offer slightly higher priced products to increase the bank's revenue.

- 2. The cluster classified as 5 represents 36% of the company's revenue. The Marketing team could offer awards or cash back to retain these customers.
 

# 1.0 Tools:
- Jupyter Notebook
- Python
- Pandas, Numpy, Sklearn, Seaborn, Matplotlib Libraries
