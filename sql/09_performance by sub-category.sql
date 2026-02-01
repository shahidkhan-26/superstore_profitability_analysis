SELECT 
  p.Category,
  p.`Sub-Category`,
  ROUND(SUM(o.Sales), 2) AS total_sales,
  ROUND(SUM(o.Profit), 2) AS total_profit,
  ROUND(SUM(o.Profit)/SUM(o.Sales), 4) AS profit_margin
FROM `superstore-sales-484717.sales.v_orders` o
LEFT JOIN `superstore-sales-484717.sales.v_products` p
  ON o.`Product ID` = p.`Product ID`
GROUP BY p.Category,p.`Sub-Category`
ORDER BY total_profit DESC