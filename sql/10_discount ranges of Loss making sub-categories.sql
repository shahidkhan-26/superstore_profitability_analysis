SELECT
  p.`Sub-Category`,
  CASE
    WHEN Discount = 0 THEN '0%'
    WHEN Discount <= 0.1 THEN '0-10%'
    WHEN Discount <= 0.2 THEN '10-20%'
    WHEN Discount <= 0.3 THEN '20-30%'
    WHEN Discount <= 0.4 THEN '30-40%'
    ELSE '40%+'
  END AS discount_range,

  COUNT (*) AS total_orders,
  ROUND(SUM(sales), 2) AS total_sales,
  ROUND(SUM(profit), 2) AS total_profit,
  ROUND(SUM(profit) / SUM(sales), 4) AS profit_margin
FROM `superstore-sales-484717.sales.v_orders` o
LEFT JOIN `superstore-sales-484717.sales.v_products` p
ON o.`Product ID` = p.`Product ID`
GROUP BY p.`Sub-Category`,discount_range
HAVING profit_margin < 0
ORDER BY p.`Sub-Category`,discount_range