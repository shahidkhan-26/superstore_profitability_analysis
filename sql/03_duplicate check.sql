SELECT 
  `Order ID`, `Product Name`,
  COUNT(*) AS dup_records
FROM `superstore-sales-484717.sales.orders`
GROUP BY `Order ID`, `Product Name`
HAVING COUNT(*) > 1;