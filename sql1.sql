show tables;
desc sales;
select * from sales;
select SaleDate, Customers, Amount from sales;
select SaleDate, Amount, Amount/Boxes 'Amount per box' from sales;
#using order by
select * from sales
where Amount >5000
order by Amount;
#order by desc
select * from sales
where Amount >5000
order by Amount desc;
#using where clause and order by
select * from sales
where GEOID='G1'
order by Amount desc;
#using and
select * from sales
where SaleDate >= '2022-01-01' and Amount>10000;
#using year
select SaleDate, Amount from sales
where year(SaleDate) = 2022 and Amount>10000
order by Amount desc;
#between
select * from sales
where Boxes between 0 and 50
order by SaleDate;

select * from sales
where Boxes=0
order by SaleDate;

#weekday function
select SaleDate, Amount, weekday(SaleDate) as 'Days of week'
from sales
where weekday(SaleDate)=4
order by amount;

#starting with people table;
select * from people
where Team='Delish' and Location='Hyderabad';

#using in clause
select * from people
where team in ('Delish','Jucies');

#use of like where an alphabet starts with 
select * from people
where Salesperson like 'B%';

#use of like where an alphabet is anywhere not only starting
select * from people
where Salesperson like '%B%';


#back to any data
select * from sales;

#using case operator
select SaleDate, Amount,
		case 	when Amount < 1000 then 'Under 1k'
				when Amount < 5000 then 'Under 5k'
                when Amount < 10000 then 'Under 10k'
			else '10k or more'
        end as 'Amount Category'
from sales;
        
