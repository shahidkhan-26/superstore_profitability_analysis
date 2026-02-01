SELECT COUNT (*) AS total_sales,
COUNTIF(Sales <= 0) AS invalid_sales_record
FROM `superstore-sales-484717.sales.orders`