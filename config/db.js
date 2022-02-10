const mysql = require('mysql2');

const connection = mysql.createConnection({
	host: "localhost",
	user: "root",
	database: "sql_injection"
});

module.exports = connection;