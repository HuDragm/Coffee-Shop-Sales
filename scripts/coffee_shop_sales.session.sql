SELECT 
    transaction_id, 
    transaction_date,
    transaction_time,
    transaction_qty,
    store_id,
    store_location,
    product_id,
    unit_price, 
    product_category, 
    product_type, 
    product_detail,
    (unit_price) * (transaction_qty) AS revenue

    FROM transactions ; 