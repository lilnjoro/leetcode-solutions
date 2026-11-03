SELECT p.product_name, SUM(o.unit) AS unit
FROM Products p
JOIN Orders o USING (product_id)
WHERE o.order_date LIKE '2020-02-%'
GROUP BY p.product_id
HAVING unit >= 100;
