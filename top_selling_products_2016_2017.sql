WITH top_2016 AS (
    SELECT 
        p.product_name
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
        SUM(od.quantity) DESC
    LIMIT 5
),
top_2017 AS (
    SELECT 
        p.product_name
    FROM 
        order_details od
    JOIN 
        orders o ON od.order_id = o.order_id
    JOIN 
        products p ON od.product_id = p.product_id
    WHERE 
        strftime('%Y', o.order_date) = '2017'
    GROUP BY 
        p.product_name
    ORDER BY 
        SUM(od.quantity) DESC
    LIMIT 5
)
SELECT 
    t2016.product_name
FROM 
    top_2016 t2016
JOIN 
    top_2017 t2017 ON t2016.product_name = t2017.product_name;
