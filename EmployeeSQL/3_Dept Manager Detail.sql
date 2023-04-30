SELECT "Dept_Manager"."Dept_No",
	"Departments"."Dept_name",
	"Dept_Manager"."Employee_No",
	first_name,
	Last_name
FROM "Dept_Manager"
inner JOIN "Employees" ON 
 "Employees"."Employee_No"="Dept_Manager"."Employee_No"
inner join "Departments" ON
"Dept_Manager"."Dept_No"="Departments"."Dept_No";
 
