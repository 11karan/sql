-- round
-- this numeric function is used to the round the numeric value to it's closest integer
select round(26.12) ;-- this hides the decimal values. 

select round(26.12,1) , round(26.37,1) , round(34.273,2) ; -- the postive values work after the decimal to round off

select round(26.12,-1) , round(24.37,-1) , round(64.273,-2) , round(34.273,-2) ; -- the negative use to round off before the decimal. 

-- truncate ... it is use to extract the value (the values work exactly same as round)
select truncate(26.12,1) ;
select mod(26,13) ; -- gives the remiander %
select pow(2,3);-- power

-- date functions
-- get the data from the date

select curtime(), curdate(), current_timestamp(), now();

-- adddate( col, 3)
select now(), adddate( now(), 20 ), adddate( now(), interval 2 hour), adddate( now(), interval 2 month);

-- month, week

select now(), weekofyear( now() ), weekday(now());

select now(), extract( year from now()) , extract( month from now());  

-- best functions of time are adddate , extract , year ,datediff, month ,now(),date_format
use sakila;

select count(amount) from payment where amount=2.99;

select count(amount) from payment where amount=0.99;

select amount from payment group by amount; 

select amount, count(amount) from payment group by amount; 

select * from payment;

select staff_id , count(payment_id) as id, sum(amount) as cost from payment group by staff_id;

select customer_id, sum(amount) from payment where customer_id>3 group by customer_id;

select customer_id, sum(amount) from payment where customer_id>3 group by customer_id;

select customer_id, sum(amount) from payment group by customer_Id having sum(amount)>100;

select payment_date, sum(amount) as total from payment group by payment_date having month(payment_date) = 6 and sum(amount) <50;

select customer_id, sum(amount) as total from payment group by customer_id ;