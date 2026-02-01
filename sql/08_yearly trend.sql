SELECT
  EXTRACT(YEAR FROM `Order Date`) AS order_year,
  ROUND(SUM(Sales), 2) AS total_sales,
  ROUND(SUM(Profit), 2) AS total_profit,
  ROUND(SUM(Profit)/SUM(Sales), 4) AS profit_margin
FROM `superstore-sales-484717.sales.orders`
GROUP BY order_year
ORDER BY order_year;