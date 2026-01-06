# Maven Roasters NYC: Operational Performance Audit (2023)

## Project Overview 
This project performs a comprehensive analysis of transaction data across three NYC coffee shop locations.  
The goal is to provide the regional manager with actionable insights regarding staffing optimisation, inventory velocity, and revenue trends. 

## Tools
- **SQL:** Feature engineering and Data subsetting. 
- **Python (Pandas/Seaborn):** Exploratory Data Analysis (EDA) and visualistion. 
- **Tableau:** Executive Dashboard for stakeholder presentation. 



## Initial EDA Findings (Phase 1): 
- **Data Integrity:** 100% completion rate (no missing values). 
- **Scope:** Analysis covers 01/01/2023 to 30/06/2023 
- **Structure:** Transactional data is at the Line-Item level. (Unique IDs per sold product) 


## Initial EDA Finidngs (Phase 2): 

### 1. Monthly Revenue Distribution:

Total Revenue shows strong month-over-month growth, peaking in May and June: 

![monthly_revenue](graph_images_py\monthly_revenue.png)


### 2. Morning Peak Dominance: 

Customer traffic is highest between **08:00** and **11:00**.  
With a notable peak of over 18K transactions at **10:00** 

![hourly_transactions](graph_images_py\horuly_trans_ditribution.png)


### 3. High-Value Morning Window: 

Revenue generation peaks between **08:00** and **11:00**, mirroring foot traffic and identifying the most profitable period for daily operations.

![hourly_revenue](graph_images_py\hourly_revenue.png)






### 4. Products Transaction Distribution:

Beverages are the primary sales drivers, with Coffee and Tea accounting for the vast majority of all transactions: 

![products_transactions](graph_images_py\products_cat_trans_count.png)


### 5. Products Revenue Generation:

Coffee is the primary revenue driver, contributing over $250K—more than double the revenue of the Bakery and Drinking Chocolate categories combined.

![products_revenue](graph_images_py\products_cat_revenue.png)

### 6. Stores' Transaction Distribution:

Transaction volume is remarkably consistent across all three New York locations, with Hell's Kitchen and Astoria leading slightly at over 50K transactions each.

![stores_trans](graph_images_py\stores_transaction_count.png)


### 7. Store's Revenue Distribution: 

Total revenue is exceptionally well-balanced across all three locations, with each store contributing approximately $230K, demonstrating a consistent and scalable business model.

![stores_revenue](graph_images_py\stores_revenue.png)




## Takeaways from EDA-Phase 2 Findings: 
- The revenue more than doubled from the start of the year to June.  
January ~ $80K  
June ~ $165K 

- The 08:00–11:00 window serves as the primary driver for both sales volume and revenue.

- Daily revenue remains consistent throughout the afternoon despite a natural tapering in total sales volume.

- Coffee is the primary driver of both sales volume and total revenue.

- Despite high sales volume (>70K), Tea’s lower price point limits total revenue to <$200K.

- All locations show nearly identical performance in both volume and revenue.



