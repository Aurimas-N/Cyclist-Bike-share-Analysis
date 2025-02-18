-- Deleted rows with ride_id dublicates, since its primary key, they have to be unique.

DELETE FROM `bikes-451213.bikesall.cyclistic_data`
WHERE ride_id IN (
  SELECT ride_id
  FROM (
    SELECT
      ride_id,
      ROW_NUMBER() OVER (PARTITION BY ride_id ORDER BY ride_id) AS row_num
    FROM `bikes-451213.bikesall.cyclistic_data`
  )
  WHERE row_num > 1
);

--
