CREATE OR REPLACE VIEW `superstore-sales-484717.sales.v_region` AS
  SELECT DISTINCT
    FARM_FINGERPRINT(CONCAT(Country, '|', Region))
  AS `Region ID`,
    Country,
    Region,
    State
FROM `superstore-sales-484717.sales.orders`