-- rider_id is our primary key, that means, it cant have any dublicates.
SELECT ride_id, COUNT(*) AS duplicate_count
FROM `bikes-451213.bikesall.cyclistic_data`
GROUP BY ride_id
HAVING COUNT(*) > 1;
-- I found out that there is 211 dublicates, and removed them with code below.

