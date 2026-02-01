SELECT COUNT(*) AS total_rows,
COUNTIF(`Order Date` IS NULL) AS null_orders,
COUNTIF(`Category` IS NULL) AS null_category,
COUNTIF(`Region` IS NULL) AS null_region,
COUNTIF(`Sales` IS NULL) AS null_sales,
FROM `superstore-sales-484717.sales.orders`