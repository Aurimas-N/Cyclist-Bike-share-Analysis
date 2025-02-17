-- Combining data from all 12 tables.

CREATE TABLE `bikes-451213.bikesall.cyclistic_data` AS (
  SELECT * FROM `bikes-451213.bikesall.bike1` 
  UNION ALL
  SELECT * FROM `bikes-451213.bikesall.bike10` 
  UNION ALL
  SELECT * FROM `bikes-451213.bikesall.bike11` 
  UNION ALL
  SELECT * FROM `bikes-451213.bikesall.bike12` 
  UNION ALL
  SELECT * FROM `bikes-451213.bikesall.bike2` 
  UNION ALL
  SELECT * FROM `bikes-451213.bikesall.bike3` 
  UNION ALL
  SELECT * FROM `bikes-451213.bikesall.bike4` 
  UNION ALL
  SELECT * FROM `bikes-451213.bikesall.bike5` 
  UNION ALL
  SELECT * FROM `bikes-451213.bikesall.bike6` 
  UNION ALL
  SELECT * FROM `bikes-451213.bikesall.bike7` 
  UNION ALL
  SELECT * FROM `bikes-451213.bikesall.bike8` 
  UNION ALL
  SELECT * FROM `bikes-451213.bikesall.bike9`
  );
