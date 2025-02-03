Create database Ola;
Use Ola;

# 1 .Retrieve all successful bookings:
Create view Successful_bookings As
Select * From Bookings
Where Booking_Status='Success';
Select*From Successful_bookings;

# 2. Find the average ride distance for each vehicle type:
Create view Average_ride_distance_for_each_vehicle As
Select Vehicle_Type, AVG(Ride_Distance) As avg_distance
From Bookings 
Group By Vehicle_Type;
Select*From Average_ride_distance_for_each_vehicle;

# 3. Get the total number of cancelled rides by customers:
Create view Total_cancelled_rides_by_customers As
Select COUNT(*) From Bookings
Where Booking_Status = 'Canceled by Customer';
Select*From Total_cancelled_rides_by_customers;

# 4. List the top 5 customers who booked the highest number of rides:
Create view Top_booking_customers As
Select Customer_ID, COUNT(Booking_ID) As total_rides 
From Bookings 
Group By Customer_ID 
Order By total_rides DESC LIMIT 5;
Select*From Top_booking_customers;

# 5. Get the number of rides cancelled by drivers due to personal and car-related issues:
Create view Cancelled_due_to_personal_and_car_related_issues As
Select COUNT(*) From bookings 
Where Canceled_Rides_by_Driver = 'Personal & Car related issue';
Select*from Cancelled_due_to_personal_and_car_related_issues;

# 6. Find the maximum and minimum driver ratings for Prime Sedan bookings:
Create view Max_and_min_driver_ratings As
Select MAX(Driver_Ratings) As max_rating, MIN(Driver_Ratings) As min_rating 
From Bookings Where Vehicle_Type = 'Prime Sedan';
Select*from Max_and_min_driver_ratings;

# 7. Retrieve all rides where payment was made using UPI:
Create view Payment_using_UPI As
Select * From Bookings 
Where Payment_Method = 'UPI';
Select*From Payment_using_UPI;

# 8. Find the average customer rating per vehicle type:
Create view Average_rating_per_vehicle As
Select Vehicle_Type, AVG(Customer_Rating) As avg_customer_rating 
From Bookings
Group By Vehicle_Type;
Select*from Average_rating_per_vehicle;

# 9. Calculate the total booking value of rides completed successfully:
Create view TotalValue_completed_successfully As
Select SUM(Booking_Value) As total_successful_value 
FROM Bookings 
WHERE Booking_Status = 'Success';
Select*From TotalValue_completed_successfully;

# 10. List all incomplete rides along with the reason:
Create view Incomplete_rides As
Select Booking_ID, Incomplete_Rides_Reason 
FROM bookings 
WHERE Incomplete_Rides = 'Yes';
Select*From Incomplete_rides;

# VIEWS:
Select*From Successful_bookings;
Select*From Average_ride_distance_for_each_vehicle;
Select*From Total_cancelled_rides_by_customers;
Select*From Top_booking_customers;
Select*from Cancelled_due_to_personal_and_car_related_issues;
Select*from Max_and_min_driver_ratings;
Select*From Payment_using_UPI;
Select*from Average_rating_per_vehicle;
Select*From TotalValue_completed_successfully;
Select*From Incomplete_rides;







