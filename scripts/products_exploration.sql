
-- This query retrieves the number of unique product types for each product category
-- from the 'transactions' table. The results are grouped by product category

SELECT 
    product_category,
    COUNT(DISTINCT product_type) AS unique_product_types 

FROM transactions 
GROUP BY product_category
ORDER BY unique_product_types DESC;


-- This query retrieves distinct combinations of product category, product type,
-- and product detail from the 'transactions' table, ordered by these fields

SELECT DISTINCT 
    product_category,
    product_type,
    product_detail 
FROM transactions 
ORDER BY
    product_category,
    product_type,
    product_detail;

-- ranking individual products based on their sales volume, popularity and earnings
CREATE VIEW products_ranking AS 
WITH product_performance AS ( 
    SELECT
        product_category, 
        product_type,
        product_detail, 
        SUM(transaction_qty) AS units_sold,
        COUNT(*) AS transaction_frequency,
        SUM(revenue) AS total_revenue
    FROM transactions 
    GROUP BY
        product_category,
        product_type,
        product_detail
)
SELECT
    product_category,
    product_type,
    product_detail,
    DENSE_RANK() OVER(PARTITION BY product_type ORDER BY units_sold DESC) AS sales_ranking,
    DENSE_RANK() OVER(PARTITION BY product_type ORDER BY transaction_frequency DESC) AS popularity_ranking,
    DENSE_RANK() OVER(PARTITION BY product_type ORDER BY total_revenue DESC) AS earnings_ranking
FROM product_performance 
ORDER BY 
    product_category,
    product_type,
    product_detail ;




-- This query calculates the total revenue for each store location within different time ranges
SELECT
    store_location, 
    time_range,
    SUM(revenue) AS total_revenue

FROM transactions 
GROUP BY    
    store_location,    
    time_range
ORDER BY 
    store_location,
    total_revenue DESC;


