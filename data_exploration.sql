-- Verifying if columns have correct data types.

SELECT 
  column_name, data_type 
FROM `bikes-451213.bikesall.INFORMATION_SCHEMA.COLUMNS`
WHERE table_name = 'cyclistic_data';

-- Identifying the nulls in columns.

SELECT COUNT(*) - COUNT(ride_id) ride_id,
 COUNT(*) - COUNT(rideable_type) rideable_type,
 COUNT(*) - COUNT(started_at) started_at,
 COUNT(*) - COUNT(ended_at) ended_at,
 COUNT(*) - COUNT(start_station_name) start_station_name,
 COUNT(*) - COUNT(start_station_id) start_station_id,
 COUNT(*) - COUNT(end_station_name) end_station_name,
 COUNT(*) - COUNT(end_station_id) end_station_id,
 COUNT(*) - COUNT(start_lat) start_lat,
 COUNT(*) - COUNT(start_lng) start_lng,
 COUNT(*) - COUNT(end_lat) end_lat,
 COUNT(*) - COUNT(end_lng) end_lng,
 COUNT(*) - COUNT(member_casual) member_casual
bikes-451213.bikesall.cyclistic_data

-- Checking for dublicates, rider_id is our primary key, that means, it cant have any dublicates, and those will be removed.
  
SELECT ride_id, COUNT(*) AS duplicate_count
FROM `bikes-451213.bikesall.cyclistic_data`
GROUP BY ride_id
HAVING COUNT(*) > 1;

-- Checking for inconsistent Categorical values for bike types.

SELECT DISTINCT rideable_type
FROM `bikes-451213.bikesall.cyclistic_data`;

-- Inconsistent Categorical values for membership

SELECT DISTINCT member_casual
FROM `bikes-451213.bikesall.cyclistic_data`;

-- Checking for ilogical start and end time dates, those has to be removed.

SELECT * 
FROM `bikes-451213.bikesall.cyclistic_data`
WHERE ended_at < started_at;

-- Checking for extreme outliers.

SELECT 
  ride_id, 
  started_at, 
  ended_at, 
  TIMESTAMP_DIFF(ended_at, started_at, MINUTE) AS ride_duration_minutes
FROM `bikes-451213.bikesall.cyclistic_data`
ORDER BY ride_duration_minutes DESC
LIMIT 10;

-- Checking if ride_id lenght is correct in all rows.

SELECT LENGTH(ride_id) AS length_ride_id, COUNT(ride_id) AS nmbr_rows
FROM bikes-451213.bikesall.cyclistic_data
GROUP BY length_ride_id;
