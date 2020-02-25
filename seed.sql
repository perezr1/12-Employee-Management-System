USE employee_trackerDB;

-- making the roles and IDs
INSERT INTO department (id,name)
VALUES (1S,"Sales");
INSERT INTO department (id,name)
VALUES (2E,"Engineer");
INSERT INTO department (id,name)
VALUES (3F,"Finance");
INSERT INTO department (id,name)
VALUES (4L,"Legal");

-- here we establish the employees 
INSERT INTO employee (id,first_name,last_name,role_id,manager_id)
VALUES (1,"John", "Doe",  100 ,3);
INSERT INTO employee (id,first_name,last_name,role_id,manager_id)
VALUES (2,"Mike", "Chan",  200, 1);
INSERT INTO employee (id,first_name,last_name,role_id,manager_id)
VALUES (3,"Ashley", "Rodriguez",  300, null);
INSERT INTO employee (id,first_name,last_name,role_id,manager_id)
VALUES (4,"Kevin", "Tupik",  100,3);
INSERT INTO employee (id,first_name,last_name,role_id,manager_id)
VALUES (6,"Malia", "Brown",  400, null);
INSERT INTO employee (id,first_name,last_name,role_id,manager_id)
VALUES (7,"Sarah", "Lourd", 100, null);
INSERT INTO employee (id,first_name,last_name,role_id,manager_id)
VALUES (8,"Tom", "Allan",  200, 6);
INSERT INTO employee (id,first_name,last_name,role_id,manager_id)
VALUES (9,"Christian", "Eckenrode", 300, 5);

-- Assigning the premade roles and info
INSERT INTO role (id,title,salary,department_id)
VALUES (1, "Sales Lead", 100000.00, 1S);
INSERT INTO role (id,title,salary,department_id)
VALUES (2, "Salesperson", 80000.00, 1S);
INSERT INTO role (id,title,salary,department_id)
VALUES (3, "Lead Engineer", 150000.00, 2E);
INSERT INTO role (id,title,salary,department_id)
VALUES (4, "Software Engineer", 120000.00, 2E);
INSERT INTO role (id,title,salary,department_id)
VALUES (6, "Accountant", 125000.00, 3F);
INSERT INTO role (id,title,salary,department_id)
VALUES (7, "Legal Team Lead", 250000.00, 4L);
INSERT INTO role (id,title,salary,department_id)
VALUES (8, "Lawyer", 190000.00, 4L);
INSERT INTO role (id,title,salary,department_id)
VALUES (9, "Software Engineer", 120000.00, 2E);
