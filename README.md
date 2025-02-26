# Cyclist Bike-share Project
### This project was completed for practise.
![image](https://miro.medium.com/v2/resize:fit:768/0*Udb72NivtDgfeetj.png)

# Company Overview:
Cyclistic bikes rental company based in Chikago was launched in 2016 and has 5,824  bicycles and 692 docking stations. Bikes can be unlocked from one station and returned to any other station in the
system anytime. The company offers flexible pricing plans: single-ride passes, full-day passes, and annual memberships. Cyclistic offers a variety of bike types making their bike-share service more inclusive.

# Business Task:
The director of marketing and my manager, has set a clear goal: Design marketing strategies aimed at converting casual riders into annual members. In order to do that, however, the team needs to better understand how annual members and casual riders differ.

* **Task** - How do annual members and casual riders use Cyclistic bikes differently ?

# Data Information:

* Data is official and published by **Motivate International Inc.** under this [License](https://divvybikes.com/data-license-agreement).
* [Cyclist's historical data](https://divvy-tripdata.s3.amazonaws.com/index.html) in `.csv` format.
* Data range is from **Mar 4th 2024** to **Feb 5th 2025**, it contains **12 `.csv` files** and overall has **(1.1 GB)** of information.
* The dataset contains records of individual **ride-id, start time** and **end time dates**, **station start** and **end locations**, **bike type** and membership type **(casual or member)**.
* Data have been uploaded to **Google Cloud Storage** , until further analysis.

# Data Processing And Cleaning:
* Data is uploaded to **BigQuery** for manipulation, cleaning and analysis by using **SQL**.
* Data vizualisation was developed with **Tableau**.
* All 12 tables were combined in to one table, view [here](https://github.com/Aurimas-N/Cyclist-Bike-share-Analysis/blob/f2e546d9fddd832c3b12edb010a9e1cf7c257b0c/data_combining.sql) and contains **5 854 384** rows.
* Data exploration - to identify the data types and detect any **missing values, outliers, inconsistencies**, or **errors** in the dataset - [here](https://github.com/Aurimas-N/Cyclist-Bike-share-Analysis/blob/4cbbd89066b61295bef09407de9d58886e90616a/data_exploration.sql).
* Cleaning - **Dublicates**, rides with duration less than a **minute** or longer than a **24h(1440min)** and n**ull values** are removed also adding **3 more columns** - **ride_length_mins** for duration of the trip, **day_of_week** and **month**. Process [here](https://github.com/Aurimas-N/Cyclist-Bike-share-Analysis/blob/4878652616e7a1d451aec11187f0fb815b4b0fe4/data_cleaning.sql).
* The cleaned table now contains **4 084 940** rows, that means **1 769 444** rows were removed.

# Analyze:

**SQL** queries for analyzing and comparing annual member and casual memberships, [here](https://github.com/Aurimas-N/Cyclist-Bike-share-Analysis/blob/f7e49f0b269280f03d44226d8fac1c12923a3bd6/data_analysis.sql)

# Share:

Visualization was created with **Tableau**, focusing to answer main question - How do annual members and casual riders use Cyclistic bikes differently? Published dashboard can be seen [here](https://public.tableau.com/views/CyclistBike-shareProject/OfTotalRides?:language=en-US&:sid=&:redirect=auth&:display_count=n&:origin=viz_share_link).

**This dashboard shows a comparison between member and casual user by bike type**.
![dashboard1](https://github.com/user-attachments/assets/b7e965fb-4c40-476c-ad57-1bbe31c6fa2b)


* Out of **4,084,940 total** users, **63.55% are members**, and **36.45% are casual riders**.
* The most popular bike type is classic bikes, accounting for **64.38%** of all rides (**members: 41.40%, casual: 23.28%**).
* The second most used type is electric bikes, making up **34.19%** of rides (**members: 21.63%, casual: 12.56%**).
* The least used option is electric scooters, representing only **1.13%** of total rides (**members: 0.52%, casual: 0.61%**).

**Trips per month, weekday and hour comparison**.
![dashboard2](https://github.com/user-attachments/assets/1b20e742-6c33-4a3b-9b18-b686ed77d839)


**Trips per month** - Both casual and member have similar pattern, where lowest trip amount is at January (**member 81 128 trips and casual 16 670 trips**), and slowly growing up towards the summer and autumn where member reached it's peak at **September (312 879 trips**) and casual at **July (227 684 trips**). Decrease starts after September for both casual and member, slowly going down.

**Trips per weekday** - Member peaks at **Wednesday (428 356 trips)** and goes down on weekends where lowest amount of trips is at **Sunday (285 972 trips)**. Casual lowest amount is at **Tuesday (159 007 trips)** and rises toward weekend reaching its peak point at **Saturday (311 662 trips)**.

**Trips per hour** - Member lowest point is at **03:00 (3997 trips)** and has two peaks during commuting hours at **08:00 (187 504 trips)**, then drops down and raises again towards **17:00 (284 696 trips)**, then slowly declines. 
Casual lowest point is at **03:00 (4 619 trips)** and slowly grows towards the day, until reaches its peak time at **17:00 ( 143 857 trips)**, then slowly declines.

**Average trip duration comparison**.
![dashboard3](https://github.com/user-attachments/assets/f562b739-8c4b-4835-b617-ba1cce78d7b1)


**Average trip duration per month** - Member monthly trip duration doesn't change alot during the year and peak at **June (13.44 min)** meanwhile casual is aproximatly double during all months compared to member and peaking at **July (26.42 min)**.

**Average trip duration per weekday** - Weekdays trip duration, has similar pattern where casual has almost double duration trips and both has tendency to raise on weekend. Casual peak time **Sunday (27.60 min)**, Member peaks at **Saturday (13.85 min)**

**Average trip duration per hour** - Member trip duration doesn't change much during the different hours and average around **12.40 min**, casual has lowest point at **05:00 (14.95 min)** and grows until reaching peak point at **10:00 (29.24 min)**, decline is seen after **14:00**.

**Starting trip locations by member and casual**.
![dashboard4](https://github.com/user-attachments/assets/889f6be6-39d8-4ec6-b1e7-a1ed961c4b7c)

**Member** - Most of the trips started near train stations, parks, restaurants, banks, residential areas, schools, hospital.

**Casual** - Most trips started near the coast, close to museums, beaches, parks, yacht club, aquarium.

**Ending trip locations for member and casual**.
![dashboard5](https://github.com/user-attachments/assets/3ae9ba17-8cd3-4226-b186-bfb760ddeadb)

**Member**- Ending locations are very similar to starting, most of them ending in residential areas further from the harbor, showing clear pattern that members use bikes mostly for daily commute.

**Casual** - Ending locations also similar to their starting, most of them ending near the harbor or tourist popular places, showing clear pattern that casual users mostly use bikes for leisure.

**Summary**: 

* The classic bikes is the most popular choice among both casual riders and members, followed by electric bikes. Electric scooters account for only 1.13% of total rides, making them the least used option.
* Casual riders are more seasonal, reaching peak in July, while members maintain a steady ridership year-round.
* Members use bikes for weekday commuting (peaking on Wednesdays), while casual riders use them more for weekend leisure (reaching peak at Saturdays).
* Members follow a structured commuting pattern and have two peaks — 8 AM and 5 PM, while casuals have a more flexible, gradual usage throughout the day that peaks at 5 PM.
* Casual riders take longer trips (approximately double the duration of members' rides), suggesting a leisurely riding experience, while members prioritize quick, efficient commutes.
* Members start and end trips near train stations, schools, hospitals, and residential areas, showing a commuting pattern. Casual riders start and end trips near coastal areas, tourist attractions, and parks, indicating recreational use.

# Act:

Recommendations to convert casual riders into members, after analyzing differences:

* **Benefits for Electric Bikes Users** - Casual users have a high demand on electric bikes compared to members, offering free ride minutes for new members who frequently rent electric bikes.
* **Membership Options** - Creating additional membership models - half year, three months or month it would encourage weekends or summer riders to become habitual users.
* **Personalized Promotions** - After a casual user completes five rides, offer them 50% discount for first month of annual membership.
* **Exclusive Access At High Demand Locations** - Offer members priority access to popular pick-up stations during peak times.
* **Discounted Hourly Rates for Members** - Casual users, on average, take trips that are twice as long, show them in application how a membership saves money on extended rides.
















