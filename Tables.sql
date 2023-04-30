-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/
-- NOTE! If you have used non-SQL datatypes in your design, you will have to change these here.


CREATE TABLE "Titles" (
    "Title_ID" varchar(5)   NOT NULL,
    "Title" varchar(50)   NOT NULL,
    CONSTRAINT "pk_Titles" PRIMARY KEY (
        "Title_ID"
     )
);

CREATE TABLE "Salaries" (
    "Employee_No" int   NOT NULL,
    "salary" int   NOT NULL,
    CONSTRAINT "pk_Salaries" PRIMARY KEY (
        "Employee_No"
     )
);

CREATE TABLE "Dept_Manager" (
    "Dept_No" varchar(4)   NOT NULL,
    "Employee_No" int   NOT NULL,
    CONSTRAINT "pk_Dept_Manager" PRIMARY KEY (
        "Dept_No"
     )
);

CREATE TABLE "Employees" (
    "Employee_No" int   NOT NULL,
    "Employee_title_ID" varchar(5)   NOT NULL,
    "Birth_date" varchar(10)   NOT NULL,
    "first_name" varchar(50)   NOT NULL,
    "last_name" varchar(50)   NOT NULL,
    "sex" varchar(1)   NOT NULL,
    "hire_date" varchar(10)   NOT NULL,
    CONSTRAINT "pk_Employees" PRIMARY KEY (
        "Employee_No"
     )
);

CREATE TABLE "Departments" (
    "Dept_No" varchar(4)   NOT NULL,
    "Dept_name" varchar(50)   NOT NULL,
    CONSTRAINT "pk_Departments" PRIMARY KEY (
        "Dept_No"
     )
);

CREATE TABLE "Dept_Employee" (
    "Employee_No" int   NOT NULL,
    "Dept_No" varchar(4)   NOT NULL,
    CONSTRAINT "pk_Dept_Employee" PRIMARY KEY (
        "Employee_No"
     )
);

ALTER TABLE "Salaries" ADD CONSTRAINT "fk_Salaries_Employee_No" FOREIGN KEY("Employee_No")
REFERENCES "Employees" ("Employee_No");

ALTER TABLE "Dept_Manager" ADD CONSTRAINT "fk_Dept_Manager_Dept_No" FOREIGN KEY("Dept_No")
REFERENCES "Departments" ("Dept_No");

ALTER TABLE "Dept_Manager" ADD CONSTRAINT "fk_Dept_Manager_Employee_No" FOREIGN KEY("Employee_No")
REFERENCES "Employees" ("Employee_No");

ALTER TABLE "Employees" ADD CONSTRAINT "fk_Employees_Employee_title_ID" FOREIGN KEY("Employee_title_ID")
REFERENCES "Titles" ("Title_ID");

ALTER TABLE "Dept_Employee" ADD CONSTRAINT "fk_Dept_Employee_Employee_No" FOREIGN KEY("Employee_No")
REFERENCES "Employees" ("Employee_No");

ALTER TABLE "Dept_Employee" ADD CONSTRAINT "fk_Dept_Employee_Dept_No" FOREIGN KEY("Dept_No")
REFERENCES "Departments" ("Dept_No");

