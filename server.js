// Initializes the npm packages used
var mysql2 = require("mysql2");
var inquirer = require("inquirer");
require("console.table");

// Initializes the connection variable to sync with a MySQL database
var connection = mysql2.createConnection({
  host: "localhost",
  port: 3306,
  user: "root",
  password: "Jacoban27-",
  database: "employee_trackerDB"
});

// Creates the connection with the server and loads the product data upon a successful connection
connection.connect(function(err) {
  if (err) throw err;
  runSearch();
});

function makeTable() {
  // Displaying an initial list of products for the user, calling promptSupervisor
  connection.query("SELECT * FROM products", function(err, res) {
    if (err) throw err;
    console.table(res);
    runSearch();
  });
}

function runSearch() {
  inquirer
    .prompt(
      {
      name: "Choice",
      type: "list",
      message: "What would you like to do?",
      choices: [
        "Add department",
        "Add role",
        "Add employee",
        "View department",
        "View role",
        "View employee",
        "Update employee role"
      ]
    })
    .then(function(answer) {
      switch (answer.action) {
        case "Add department":
          addDepartment();
          break;
        case "Add role":
          addRole();
          break;
        case "Add employee":
          addEmployee();
          break;
        case "view department":
          viewDepartment();
          break;
        case "View role":
          viewRole();
          break;
        case "View employee":
          viewEmployee();
          break;
      }
    });
}

function addDepartment() {
  // Asking the user about the department they would like to add
  inquirer
    .prompt([
      {
        type: "input",
        name: "departmentName",
        message: "What is the ID of the department?"
      },
      {
        type: "input",
        name: "departementId",
        message: "What is the name of the department",
        validate: function(val) {
          return val > 0;
        }
      }
    ])
    .then(function(answer) {
      // Using the information the user provided to create a new department
      connection.query("INSERT INTO department (id,name) VALUES (?, ?)",
        [val.id, val.name],
        function(err) {
          if (err) throw err;
          // If successful, alert the user, run makeTable again
          console.log("ADDED DEPARTMENT!");
          makeTable();
        }
      );
    });
}