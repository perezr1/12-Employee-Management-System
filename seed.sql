USE employee_trackerDB;

INSERT INTO department (id, name)
VALUES (1S,"Sales"),
 (2E,"Engineer"),
 (3F,"Finance"),
 (4L,"Legal");

INSERT INTO role (id, title, salary, department_id)
VALUES (10, "Sales Lead", 100000.00, 1S),
 (20, "Salesperson", 80000.00, 1S),
 (30, "Lead Engineer", 150000.00, 2E),
 (40, "Software Engineer", 120000.00, 2E),
 (60, "Accountant", 125000.00, 3F),
 (70, "Legal Team Lead", 250000.00, 4L),
 (80, "Lawyer", 190000.00, 4L),
 (90, "Software Engineer", 120000.00, 2E);

INSERT INTO employee (id, first_name, last_name, role_id, manager_id)
VALUES (1,"John", "Doe", 10, 3),
 (2,"Mike", "Chan", 20, 1),
 (3,"Ashley", "Rodriguez", 30, null),
 (4,"Kevin", "Tupik", 40, 3),
 (6,"Malia", "Brown", 60, null),
 (7,"Sarah", "Lourd", 70, null),
 (8,"Tom", "Allan", 80, 6),
 (9,"Christian", "Eckenrode", 90, 5);
