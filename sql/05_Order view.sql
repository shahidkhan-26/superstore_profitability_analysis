CREATE VIEW `superstore-sales-484717.sales.orders_ext` AS
  SELECT
    `Order ID`,
    `Order Date`,
    `Ship Date`,
    `Product ID`,
    `Region`,
    `Sales`,
    `Quantity`,
    `Discount`,
    `Profit`
FROM `superstore-sales-484717.sales.orders`