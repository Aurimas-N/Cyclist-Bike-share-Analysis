-- Ride count by user type.

SELECT 
  member_casual, 
  COUNT(*) AS total_rides
FROM `bikes-451213.bikesall.cleaned_cyclistic_data`
GROUP BY member_casual;

-- Average ride duration by type.

SELECT 
  member_casual, 
  ROUND(AVG(ride_length_mins), 2) AS avg_ride_duration
FROM `bikes-451213.bikesall.cleaned_cyclistic_data`
GROUP BY member_casual;

-- Most used rideable type for each user.

SELECT 
  member_casual, 
  rideable_type, 
  COUNT(*) AS ride_count
FROM `bikes-451213.bikesall.cleaned_cyclistic_data`
GROUP BY member_casual, rideable_type
ORDER BY member_casual, ride_count DESC;

-- Trips per month.

SELECT month, member_casual, COUNT(ride_id) AS total_trips
FROM `bikes-451213.bikesall.cleaned_cyclistic_data`
GROUP BY month, member_casual
ORDER BY member_casual;

-- Trips per week day.

SELECT 
  day_of_week, 
  member_casual, 
  COUNT(*) AS ride_count
FROM `bikes-451213.bikesall.cleaned_cyclistic_data`
GROUP BY day_of_week, member_casual
ORDER BY day_of_week;

-- Trips per hour of day.

SELECT EXTRACT(HOUR FROM started_at) AS hour_of_day, member_casual, COUNT(ride_id) AS total_trips
FROM `bikes-451213.bikesall.cleaned_cyclistic_data`
GROUP BY hour_of_day, member_casual
ORDER BY member_casual;

-- Average ride duration by month.

SELECT 
  month, 
  member_casual, 
  ROUND(AVG(ride_length_mins), 2) AS avg_ride_duration
FROM `bikes-451213.bikesall.cleaned_cyclistic_data`
GROUP BY month, member_casual
ORDER BY month;

-- Average ride duration by day of the week.

SELECT 
  day_of_week, 
  member_casual, 
  ROUND(AVG(ride_length_mins), 2) AS avg_ride_duration
FROM `bikes-451213.bikesall.cleaned_cyclistic_data`
GROUP BY day_of_week, member_casual
ORDER BY day_of_week;

-- Average ride duration by hour of the day.

SELECT 
  EXTRACT(HOUR FROM started_at) AS hour_of_day, 
  member_casual, 
  ROUND(AVG(ride_length_mins), 2) AS avg_ride_duration
FROM `bikes-451213.bikesall.cleaned_cyclistic_data`
GROUP BY hour_of_day, member_casual
ORDER BY hour_of_day;

-- Start location for casual.

SELECT member_casual, start_station_name,
AVG(start_lat) AS start_lat, 
AVG(start_lng) AS start_lng,
COUNT(*) AS total_rides
FROM `bikes-451213.bikesall.cleaned_cyclistic_data`
WHERE member_casual = 'casual'
GROUP BY member_casual, start_station_name;

-- End location for casual.

SELECT member_casual, end_station_name,
AVG(end_lat) AS end_lat, 
AVG(end_lng) AS end_lng,
COUNT(*) AS total_rides
FROM `bikes-451213.bikesall.cleaned_cyclistic_data`
WHERE member_casual = 'member'
GROUP BY member_casual, end_station_name;

-- Start location for member.

SELECT member_casual, start_station_name,
AVG(start_lat) AS start_lat, 
AVG(start_lng) AS start_lng,
COUNT(*) AS total_rides
FROM `bikes-451213.bikesall.cleaned_cyclistic_data`
WHERE member_casual = 'casual'
GROUP BY member_casual, start_station_name;

-- End location for member.

SELECT member_casual, end_station_name,
AVG(end_lat) AS end_lat, 
AVG(end_lng) AS end_lng,
COUNT(*) AS total_rides
FROM `bikes-451213.bikesall.cleaned_cyclistic_data`
WHERE member_casual = 'member'
GROUP BY member_casual, end_station_name;






