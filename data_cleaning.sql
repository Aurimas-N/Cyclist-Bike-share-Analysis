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

-- Rides with duration less than a minute or longer than a 24h(1440min) and null values are removed also adding 3 more columns -ride_length_mins for duration of the trip, day_of_week and month.

CREATE OR REPLACE TABLE `bikes-451213.bikesall.cleaned_cyclistic_data` AS
SELECT 
  ride_id, 
  rideable_type,
  started_at,
  ended_at,
  TIMESTAMP_DIFF(ended_at, started_at, MINUTE) AS ride_length_mins, -- Calculating ride lenght in minutes.
  
  CASE                                                              -- Converting numeric month to it's name.
    EXTRACT(MONTH FROM started_at)
    WHEN 1 THEN 'January' WHEN 2 THEN 'February' WHEN 3 THEN 'March'
    WHEN 4 THEN 'April' WHEN 5 THEN 'May' WHEN 6 THEN 'June'
    WHEN 7 THEN 'July' WHEN 8 THEN 'August' WHEN 9 THEN 'September'
    WHEN 10 THEN 'October' WHEN 11 THEN 'November' WHEN 12 THEN 'December'
  END AS month,
  CASE EXTRACT(DAYOFWEEK FROM started_at)                            -- Converting numeric day to it's name.
    WHEN 1 THEN 'Sunday' WHEN 2 THEN 'Monday' WHEN 3 THEN 'Tuesday'
    WHEN 4 THEN 'Wednesday' WHEN 5 THEN 'Thursday' WHEN 6 THEN 'Friday'
    WHEN 7 THEN 'Saturday'    
  END AS day_of_week,

  start_station_name,
  start_station_id,
  end_station_name,
  end_station_id,
  start_lat,
  start_lng,
  end_lat,
  end_lng,
  member_casual

FROM `bikes-451213.bikesall.cyclistic_data`
WHERE TIMESTAMP_DIFF(ended_at, started_at, MINUTE) > 1        -- Adding time frame, to avoid unrealistic ride durations.
  AND TIMESTAMP_DIFF(ended_at, started_at, MINUTE) < 1440 
  AND ride_id IS NOT NULL                                     -- Clearing null values.
  AND rideable_type IS NOT NULL
  AND started_at IS NOT NULL
  AND ended_at IS NOT NULL
  AND start_station_name IS NOT NULL
  AND start_station_id IS NOT NULL
  AND end_station_name IS NOT NULL
  AND end_station_id IS NOT NULL
  AND start_lat IS NOT NULL
  AND start_lng IS NOT NULL
  AND end_lat IS NOT NULL
  AND end_lng IS NOT NULL
  AND member_casual IS NOT NULL;
