use `zomato_project`;

select * from `man table`
inner join `country table`
on `man table`.CountryCode = `country table`.CountryID;

select Countryname,City, count(`RestaurantID`) from `man table`, `country table`
group by Countryname, City
order by count(`RestaurantID`) desc;

select Quarter,Month,Year, count(RestaurantID) from `date table`, `man table`
group by Quarter,Month,Year
order by count(RestaurantName) desc;


select Has_Table_booking, concat(round(count(Has_Table_booking)/100,1),"%") Percentge from `man table`
group by Has_Table_booking;

select Has_Online_delivery, concat(round(count(Has_Online_delivery)/100,1),"%") Percentge from `man table`
group by Has_Online_delivery;


select case when Rating <=2 then "0-2" when Rating <=3 then "2-3" when Rating <=4 then "3-4" when Rating<=5 then "4-5" end Rating,
    count(restaurantid) 
       from `man table`
           group by Rating;


