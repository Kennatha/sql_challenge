SELECT "Dept_Employee"."Dept_No",
	"Dept_Employee"."Employee_No",
	first_name,
	Last_name,
	"Departments"."Dept_name"
FROM "Dept_Employee"
inner JOIN "Employees" ON 
 "Employees"."Employee_No"="Dept_Employee"."Employee_No"
inner join "Departments" ON
"Dept_Employee"."Dept_No"="Departments"."Dept_No";