 SELECT "Employees"."Employee_No",
    first_name,
   last_name,
    sex,
    salary
   FROM "Salaries"
     JOIN "Employees" ON "Salaries"."Employee_No" = "Employees"."Employee_No";
