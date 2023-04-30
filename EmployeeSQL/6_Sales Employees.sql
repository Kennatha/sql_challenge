select "Employees"."Employee_No", first_name, last_name
from "Employees"
where "Employees"."Employee_No" in
(Select "Dept_Employee"."Employee_No"
	from "Dept_Employee"
	where "Dept_Employee"."Dept_No" in
		(select "Departments"."Dept_No"
		from "Departments"
		where "Departments"."Dept_name" = 'Sales'));