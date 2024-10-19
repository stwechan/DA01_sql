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
--bai5
select sender_id,
count(message_id) as message_count
from messages
where extract(month from sent_date)=8
and extract(year from sent_date)=2022
group by sender_id
order by message_count desc
limit 2
--bai6
select tweet_id from tweets
where length(content)>15
--bai7
select activity_date as day, 
count(distinct user_id) as active_users
from activity
where datediff ('2019-07-27', activity_date) < 30 and 
datediff ('2019-07-27', activity_date)>=0
group by 1
--bai8
select 
count(employee_id) as number_employee
from employees
where extract(month from joining_date) between 1 and 7
add extract(year from joining_date)=2022
--bai9
select position('a' in first_name) as position
from worker
where first_name='Amitah'
--bai10
select substring(title,length(winery)+2,4)
from winemag_p2
where country='Macedonia'

