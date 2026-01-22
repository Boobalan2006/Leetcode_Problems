# Write your MySQL query statement below
select p.product_id,IFNULL(Round(sum(p.price*s.units)/sum(s.units),2),0) as average_price
from Prices as p left join UnitsSold as s
on p.product_id=s.product_id
and s.purchase_date >= p.start_date and s.purchase_date <= p.end_date
group by p.product_id