USE employee_trackerDB;

-- making the roles and IDs
INSERT INTO department (id,name)
VALUES (1S,"Sales"),
 (2E,"Engineer"),
 (3F,"Finance"),
 (4L,"Legal");

SELECT * FROM department;

-- Assigning the premade roles and info
INSERT INTO role (id,title,salary,department_id)
VALUES (1, "Sales Lead", 100000.00, 1S),
 (2, "Salesperson", 80000.00, 1S),
 (3, "Lead Engineer", 150000.00, 2E),
 (4, "Software Engineer", 120000.00, 2E),
 (6, "Accountant", 125000.00, 3F),
 (7, "Legal Team Lead", 250000.00, 4L),
 (8, "Lawyer", 190000.00, 4L),
 (9, "Software Engineer", 120000.00, 2E);

SELECT * FROM role;

-- here we establish the employees 
INSERT INTO employee (id,first_name,last_name,role_id,manager_id)
VALUES (1,"John", "Doe",  100 ,3),
 (2,"Mike", "Chan",  200, 1),
 (3,"Ashley", "Rodriguez",  300, null),
 (4,"Kevin", "Tupik",  100,3),
 (6,"Malia", "Brown",  400, null),
 (7,"Sarah", "Lourd", 100, null),
 (8,"Tom", "Allan",  200, 6),
 (9,"Christian", "Eckenrode", 300, 5);

SELECT * FROM employee;
