--bai1
select country.continent, floor(avg(city.population)) as average_population
from city
join country on city.countrycode=country.code
group by country.continent
--bai2
select   
round(count(distinct t.email_id) * 1.0 / count(distinct e.email_id), 2) as confirm_rate  
from emails e  
left join texts t on e.email_id = t.email_id and t.signup_action = 'Confirmed';
--bai3
select ab.age_bucket,  
round(sum(case when a.activity_type = 'send' then a.time_spent else 0 end) * 100.0 / nullif(sum(a.time_spent), 0), 2) as send_perc,  
round(SUM(case when a.activity_type = 'open' then a.time_spent else 0 end) * 100.0 / nullif(sum(a.time_spent), 0), 2) as open_perc  
from activities a  
join age_breakdown ab on a.user_id = ab.user_id  
where a.activity_type in ('send', 'open')  
group by ab.age_bucket
--bai4
select cc.customer_id  
from customer_contracts cc  
join products p on cc.product_id = p.product_id  
group by cc.customer_id  
having(distinct p.product_category) = (select count(distinct product_category) from products)  
--bai5
select  a.employee_id,  a.name,   
count(b.employee_id) as reports_count,   
round(avg(b.age)) as average_age   
from Employees a   
left join Employees b on a.employee_id = b.reports_to   
where a.employee_id in (select distinct reports_to from Employees where reports_to is not null)  
group by a.employee_id, a.name   
order by a.employee_id
--bai6
select p.product_name, sum(o.unit) as unit  
from Products p  
join Orders o on p.product_id = o.product_id  
where o.order_date between '2020-02-01' and '2020-02-29'  
group by p.product_name  
having sum(o.unit) >= 100 
--bai7
select pg.page_id
from pages pg
left page_likes pl
on pg.page_id = pl.page_id
where pl.liked_date is null
order by pg.page_id asc
