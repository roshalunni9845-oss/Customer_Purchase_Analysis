SELECT 
    item_purchased,
    color,
    garment_size,
    COUNT(*) AS units_sold,
    SUM(purchase_amount) AS total_sales
FROM staging_fashion_sales
GROUP BY item_purchased, color, garment_size
ORDER BY units_sold DESC
LIMIT 10;