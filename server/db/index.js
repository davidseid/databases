var mysql = require('mysql');

// Create a database connection and export it from this file.
// You will need to connect with the user "root", no password,
// and to the database "chat".

db = mysql.createConnection({
  user: 'student',
  password: 'student',
  database: 'chat'
});

db.connect();

module.exports = db;
