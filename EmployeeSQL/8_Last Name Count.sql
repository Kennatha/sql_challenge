select last_name, count(last_name) as "Name Count"
from "Employees"
group by last_name
order by "Name Count" desc;
