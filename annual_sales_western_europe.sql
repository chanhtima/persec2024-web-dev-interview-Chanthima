SELECT 
    strftime('%Y', o.order_date) AS year,
    SUM(od.quantity * od.unit_price * (1 - od.discount)) AS total_sales
FROM 
    order_details od
JOIN 
    orders o ON od.order_id = o.order_id
WHERE 
    o.ship_region = 'Western Europe'
GROUP BY 
    year;
