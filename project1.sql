#create schema cars;
use cars;
# 1.Read data--
select * from car_dekho;
# 2.Total count to get record of total cars
select count(*) from car_dekho;
# 3. Manager asked for the number of cars available in 2023?
select count(*) from car_dekho where year = 2023;
# 4. Cars available in year 2020 , 21, 22.
select count(*) from car_dekho where year = 2020;
select count(*) from car_dekho where year = 2021;
select count(*) from car_dekho where year = 2022;
select count(*) from car_dekho where year in (2020,2021,2022) group by year;
# 5. client asked to add total of all the years , only count not all the details
select year,count(*) from car_dekho group by year;
# 6. number of diesel car in 2020?
select count(*) from car_dekho where year = 2020 and fuel = "Diesel";
# 7. number of petrol cars in 2022
select count(*) from car_dekho where year = 2022 and fuel = "Petrol";
# 8. print all the cars (petrol,cng, diesel) come by all the years
select year, count(*) from car_dekho where fuel = "Petrol" group by year;
select year, count(*) from car_dekho where fuel = "Diesel" group by year;
select year, count(*) from car_dekho where fuel = "CNG" group by year; # these are less in number compared to both
# 9. Year which has more than 100 cars?
select year, count(*) from car_dekho group by year having count(*) > 100;
select year, count(*) from car_dekho group by year having count(*) < 50;
# 10. All cars Count details between 2015 to 2023 , compelete details count
select count(*) from car_dekho where year between 2015 and 2023; 
# all car details 2015 to 2023
select * from car_dekho where year between 2015 and 2023;
-- END --

