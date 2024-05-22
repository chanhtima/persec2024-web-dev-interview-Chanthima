 SELECT 
    p.product_name,
    SUM(od.quantity) AS total_quantity_sold
FROM 
    order_details od
JOIN 
    orders o ON od.order_id = o.order_id
JOIN 
    products p ON od.product_id = p.product_id
WHERE 
    strftime('%Y', o.order_date) = '2016'
GROUP BY 
    p.product_name
ORDER BY 
    total_quantity_sold DESC
LIMIT 5;
