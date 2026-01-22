# Write your MySQL query statement below
with c as(
select product_id, new_price, n from (
select product_id, rank() over (partition by product_id order by change_date desc) as n, new_price,change_date
from Products
where change_date<='2019-08-16') d
where n=1
)

select distinct a.product_id, ifnull(c.new_price,10) as price
from Products a
left join c on a.product_id = c.product_id