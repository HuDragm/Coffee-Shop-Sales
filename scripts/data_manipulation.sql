
-- This query retrieves the number of unique product types for each product category
-- from the 'transactions' table. The results are grouped by product category

SELECT 
    product_category,
    COUNT(DISTINCT product_type) AS unique_product_types 

FROM transactions 
GROUP BY product_category
ORDER BY unique_product_types DESC;


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


