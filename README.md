# Cyclist Bike-share Capstone Project
### This project was completed as a part of the Google Data Analytics Certification.
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
* Cleaning - Dublicates, rides with duration less than a minute or longer than a 24h(1440min) and null values are removed also adding 3 more columns - **ride_length_mins** for duration of the trip, **day_of_week** and **month**. Process [here](https://github.com/Aurimas-N/Cyclist-Bike-share-Analysis/blob/4cbbd89066b61295bef09407de9d58886e90616a/data_cleaning.sql).
* Cleaned table now has **4 084 940** rows, that means **1 769 444** rows were removed.

# Analyze

SQL querys for analysis, [here](
