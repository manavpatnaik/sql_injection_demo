const mysql = require('mysql2');

const connection = mysql.createConnection({
	host: "localhost",
	user: "root",
	database: "sql_injection",
	multipleStatements: true
});

module.exports = connection;