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