
select "Employees"."Employee_No", first_name, last_name,"Departments"."Dept_name"
from "Employees"
inner join "Dept_Employee" on
"Employees"."Employee_No" = "Dept_Employee"."Employee_No"
inner join "Departments" on
"Departments"."Dept_No"="Dept_Employee"."Dept_No"
where "Departments"."Dept_name" in ('Sales','Development');
