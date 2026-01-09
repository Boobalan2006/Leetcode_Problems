select d.name as Department,
e. name as Employee,
e.salary
from Employee as e join department as d
on e.departmentId = d.id
where 3> (select count(distinct e1.salary) from Employee as e1
where e1.salary>e.salary and e1.departmentId = e.departmentId )
order by 1, 3 desc