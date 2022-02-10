const express = require('express');
const path = require('path');
const app = express();
const db = require('./config/db');

app.use(express.json());

app.get('/', (req, res) => {
	res.sendFile(path.join(__dirname, 'index.html'));
});

app.post('/query', (req, res) => {
	const { keyword } = req.body;
	const sql = `SELECT itemname, quantity, price FROM items WHERE itemname LIKE '%${keyword}%';`;
	console.log(sql);
	db.query(sql, (err, results) => {
		if (err) return res.status(404).send({ success: false, msg: err.message });
		return res.send(results);
	});
});

const PORT = 5000;
app.listen(PORT, () => console.log(`Listening on PORT: ${PORT}`));
