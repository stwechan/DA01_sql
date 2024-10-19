--bai1
select 
sum(case when  device_type = 'laptop' then 1 else 0 end) as laptop_views, 
sum(case when device_type in ('tablet', 'phone') then 1 else 0 end) as mobile_views 
from viewership
--bai2
select x, y, z,  
case   
when x + y > z and x + z > y and y + z > x then 'Yes'  
else 'No'  
end as triangle  
from Triangle
--bai3 
select
round(sum(case
when call_category is null then 1 
when call_category = 'n/a' then 1
else 0 end) * 100.0 / count(case_id), 1)
from callers
--bai4
select name from customer 
where referee_id != 2 or referee_id is null
--bai5
select survived,
sum(case when pclass = 1 then 1 else 0 end) as first_class,
sum(case when pclass = 2 then 1 else 0 end) as second_class,
sum(case when pclass = 3 then 1 else 0 end) as third_class
from titanic
group by survived
