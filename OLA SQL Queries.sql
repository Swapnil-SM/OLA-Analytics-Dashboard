SELECT * FROM ola_dataset;
#RETRIEVING ALL SUCCESSFUL BOOKINGS
CREATE VIEW SUCCESFUL_BOOKINGS AS
SELECT * FROM OLA_DATASET WHERE BOOKING_STATUS='SUCCESS';

#FINDING THE AVERAGE RIDE DISTANCE FOR EACH VEHICLE TYPE
SELECT AVG(RIDE_DISTANCE),VEHICLE_TYPE FROM OLA_DATASET GROUP BY VEHICLE_TYPE;

# FINDING TOTAL NUMBER OF CANCELLED RIDES BY CUSTOMERS
SELECT COUNT(*)   FROM OLA_DATASET WHERE BOOKING_STATUS='CANCELED BY CUSTOMER';

# TOP 5 CUSTOMERS WHO BOOKED MOST NUMBER OF THE RIDES
SELECT COUNT(BOOKING_ID) AS TOTAL_RIDES,CUSTOMER_ID FROM OLA_DATASET GROUP BY CUSTOMER_ID ORDER BY TOTAL_RIDES DESC LIMIT 5; 

#Number of rides canceled by drivers due to personal and car-related issue
select count(*) as total_rides from  ola_dataset where Canceled_Rides_by_Driver='personal & Car related issue';

# find minimum and maximum driver ratings
select max(driver_ratings) as max_ratings,min(driver_ratings) as min_ratings from ola_dataset;

#retrieving all rides where payment was made using upi
Select * from ola_dataset where Payment_Method='UPI';

#finding average customer ratings per vehicle type
select cast(avg(customer_rating) as decimal(10,2)),vehicle_type from ola_dataset group by Vehicle_Type;
# OR
select ROUND(avg(customer_rating),2),vehicle_type from ola_dataset group by Vehicle_Type

# LISTING ALL INCOMPLETE RIDES ALONGWITH THE REASON
SELECT INCOMPLETE_RIDES_REASON,BOOKING_ID FROM OLA_DATASET WHERE INCOMPLETE_RIDES!='No';
