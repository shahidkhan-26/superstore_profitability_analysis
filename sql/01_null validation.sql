SELECT COUNT(*) AS total_rows,
COUNTIF(Profit IS NULL) AS null_profits,
COUNTIF(Sales IS NULL) AS null_sales,
COUNTIF(Discount IS NULL) AS null_discounts,
COUNTIF(Region IS NULL) AS null_regions
FROM `superstore-sales-484717.sales.orders`
