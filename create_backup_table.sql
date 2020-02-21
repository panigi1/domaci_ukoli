-- create table as is a function to fully duplicate a table
create table sakila.public.backup2
as
select *
from customer c 
;

-- code below visualize the table created before
select *
from backup2
;

select max(length(first_name))
from customer;

select max(length(last_name))
from customer;

alter table customer 
	add column 
	username varchar (8)
;
alter table customer 
add column full_name varchar (25)
;

select * from customer c2;

update customer
 set username = lower(concat(substring(first_name,1,1), substring(last_name,1,7)));
 
update customer 
	set full_name = INITCAP(CONCAT (first_name, ' ', last_name));