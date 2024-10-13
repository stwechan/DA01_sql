--bai1
select name from students
where marks>75
order by right(name,3),ID
--bai2
select user_id,
concat(uper(left(name,1),lower(right(name,length(name)-1)))
as name, substring(name from 2)
from users
order by user_id
--bai3
select manufacturer,
'$'||round(sum(total_sales)/1000000,0)||' ''million' as sale
from pharmacy_sales
group by manufacturer
order by sum(total_sales) desc,manufacturer
--bai4
select extract(month from submit_date) as mth,
product_id,
round(avg(stars),2) as avg_stars from reviews
group by mth,product_id
order by mth, product_id
