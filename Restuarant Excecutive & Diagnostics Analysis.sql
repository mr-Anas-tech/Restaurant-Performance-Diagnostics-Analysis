-------------------------Relation_ship
SELECT * FROM dim_date;
SELECT * FROM fct_orders;
SELECT * FROM dim_dish;
SELECT * FROM dim_location;
SELECT * FROM dim_restuarant;
Alter Table dim_date


Add primary key  (date_id);

Alter Table fct_orders
 ADD Constraint FK_date_order foreign key (date_id) References dim_date (date_id);

 ALTER Table dim_dish
 ADD primary key (dish_id);

 Alter Table fct_orders
 ADD Constraint FK_dish_order foreign key (dish_id) References dim_dish (dish_id);

 
 ALTER Table dim_location
 ADD primary key (location_id);

 Alter Table fct_orders
 ADD Constraint FK_loc_order foreign key (location_id) References dim_location(location_id);

 ALTER Table dim_restuarant
 ADD primary key (restaurant_id);

 Alter Table fct_orders
 ADD Constraint FK_rest_order foreign key (restaurant_id) References dim_restuarant(restaurant_id);




-----Then see why Revenue in 8th month decrease Suddenly.

---HOW much effect on Growth?.
With monthely_analysis AS(
SELECT 
d."Month",
sum(f.price) AS Monthely_Revenue
from fct_orders as f
join dim_date as d
ON f.date_id=d.date_id
group by d."Month"),

Comparison AS (
select "Month",
Monthely_revenue,
LAG(Monthely_revenue) over(order by "Month")
 AS previous_monthely_revenue
 from monthely_analysis)

 SELECT 
 "Month",
 monthely_Revenue,
 previous_monthely_revenue,
 (((Monthely_Revenue-previous_monthely_revenue)/previous_monthely_revenue)*100)
 AS Growth
 FROM
 Comparison;

---Which Restuarant are not Generate Revenue in MOnth 9?.


SELECT 
r.restaurant_name,
SUM(case when d."Month"=8 Then f.price Else 0 END) AS rev_aug,
SUM(CASE when d."Month"=9 Then f.price Else 0 END) AS rev_sep
FROM fct_orders as f
JOIN dim_restuarant  as r
ON r.restaurant_id=f.restaurant_id
JOIN dim_date as d
ON f.date_id=d.date_id
WHERE d."Month" IN (8, 9)
GROUP BY r.restaurant_name
HAVING SUM(case when d."Month"=8 Then f.price Else 0 END)>100000
Order by rev_sep ASC;



----Checking Missing Data.
SELECT 
    d.order_date::date, 
    SUM(f.price) AS daily_revenue
FROM fct_orders f
JOIN dim_date d ON f.date_id = d.date_id
WHERE d."Month" = 9
GROUP BY d.order_date::date
ORDER BY d.order_date::date;



--- data is incomplete because only 8 days are given from month 9 to 11.
---This is due to Sourse error or app problem or anyother
---by comaprision rev of 8 moth by 9 month

--REV in month 8=$5.8M
--Rev in month 9=$1.7M
--so,daily rev is 1.7/8=212500 perday
--And then 212500*30=$6.37M
---SO,$6.37M/ $5.8M=1.09%
---So the bussiness grow 10 to 11% more in september .


 




