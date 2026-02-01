CREATE VIEW `superstore-sales-484717.sales.products` AS
  SELECT DISTINCT
    `Product ID`,
    `Product Name`,
    `Category`,
    `Sub-Category`
FROM `superstore-sales-484717.sales.orders`