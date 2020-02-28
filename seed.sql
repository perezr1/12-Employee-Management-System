USE employee_trackerDB;

INSERT INTO department (name)
VALUES ("Sales"),
 ("Engineer"),
 ("Finance"),
 ("Legal");

INSERT INTO role (title, salary, department_id)
VALUES ("Sales Lead", 100000.00, 1),
 ("Salesperson", 80000.00, 1),
 ("Lead Engineer", 150000.00, 2),
 ("Software Engineer", 120000.00, 2),
 ("Accountant", 125000.00, 3),
 ("Legal Team Lead", 250000.00, 4),
 ("Lawyer", 190000.00, 4),
 ("Software Engineer", 120000.00, 2);

INSERT INTO employee (first_name, last_name, role_id, manager_id)
VALUES ("John", "Doe", 1, 3),
 ("Mike", "Chan", 2, 1),
 ("Ashley", "Rodriguez", 3, null),
 ("Kevin", "Tupik", 4, 3),
 ("Malia", "Brown", 5, null),
 ("Sarah", "Lourd", 6, null),
 ("Tom", "Allan", 7, 6),
 ("Christian", "Eckenrode", 8, 5);
