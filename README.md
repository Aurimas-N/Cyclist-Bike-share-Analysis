# Cyclist Bike-share Project
### This project was completed for practise.
![image](https://miro.medium.com/v2/resize:fit:768/0*Udb72NivtDgfeetj.png)

# Company Overview:
Cyclistic bikes rental company based in Chikago was launched in 2016 and has 5,824  bicycles and 692 docking stations. Bikes can be unlocked from one station and returned to any other station in the
system anytime. Company has flexibility of its pricing plans: single-ride passes, full-day passes, and annual memberships. Cyclistic offers a variety of bike types making their bike-share service more inclusive.

# Business Task:
How do annual members and casual riders use Cyclistic bikes differently ?

# Data Information:

* Data is official and published by Motivate International Inc. under this [License](https://divvybikes.com/data-license-agreement).
* [Cyclist's historical data](https://divvy-tripdata.s3.amazonaws.com/index.html) in `.csv` format.
* Data range is from Mar 4th 2024 to Feb 5th 2025, it contains 12 `.csv` files and overall has (1.1 GB) of information.
* Dataset contains records of individual ride-id, start time and end time dates, station start and end locations, bike type and membership type (casual or member).
* Data have been uploaded to **Google Cloud Storage** , until further analysis.

# Data Processing And Cleaning:
* Data is uploaded to **BigQuery** for manipulation, cleaning and analysis by using SQL.
* Data vizualisation developed with **Tableau**.
* All 12 tables was combined in to one table, view [here](https://github.com/Aurimas-N/Cyclist-Bike-share-Analysis/blob/f2e546d9fddd832c3b12edb010a9e1cf7c257b0c/data_combining.sql) and has **5 854 384** rows.
* Data exploration - to identify the data types and detect any missing values, outliers, inconsistencies, or errors in the dataset - [here](https://github.com/Aurimas-N/Cyclist-Bike-share-Analysis/blob/4cbbd89066b61295bef09407de9d58886e90616a/data_exploration.sql).
* Cleaning - Dublicates, rides with duration less than a minute or longer than a 24h(1440min) and null values are removed also adding 3 more columns - **ride_length_mins** for duration of the trip, **day_of_week** and **month**. Process [here](https://github.com/Aurimas-N/Cyclist-Bike-share-Analysis/blob/4878652616e7a1d451aec11187f0fb815b4b0fe4/data_cleaning.sql).
* Cleaned table now has **4 084 940** rows, that means **1 769 444** rows were removed.

# Analyze:

SQL querys for analyzing and comparing annual member and casual memberships, [here](https://github.com/Aurimas-N/Cyclist-Bike-share-Analysis/blob/f7e49f0b269280f03d44226d8fac1c12923a3bd6/data_analysis.sql)

# Share:

Visualization is done with Tableau, with the focus to answer main question - How do annual members and casual riders use Cyclistic bikes differently? Published dashboard can be seen [here](https://public.tableau.com/app/profile/aurimas.naujalis/viz/CyclistBike-shareProject/oftotalrides).

This dashboard show's comparison between member and casual user by bike type.
![Image](https://github.com/user-attachments/assets/a8768b66-7c07-4167-96b8-28090a7bbef5)

Out of 4 084 940 total users 63.55% is Member and 36.45% Casual. Most popular bike type is classic bike - overall takes 64,38% (member 41.40%, casual 23.28%) , secondary is electric bike - overall takes 34,19% (member 21.63%, casual 12.56%) and least popular electric scooter - overall takes 1,13% (member 0.52%, casual 0.61%)

Trips per month, weekday and hour comparison.
![dashboard_2](https://github.com/user-attachments/assets/299704eb-54f0-4bf3-bea4-84fd0333cb95)

**Trips per month** - Both casual and member have similar pattern, where lowest trip amount is at January (member 81128 trips and casual 16670 trips), and slowly growing up towards the summer and autumn where member reached it's peak at September (312879 trips) and casual at July (227684 trips). Decrease starts after September for both casual and member, slowly going down.

**Trips per weekday** - member peaks at Wednesday (428356 trips) and goes down on weekends where lowest amount of trips is at Sunday (285972 trips). Casual lowest amount is at Tuesday (159007 trips) and rises toward weekend reaching its peak point at Saturday (311662 trips).

**Trips per hour** - 











