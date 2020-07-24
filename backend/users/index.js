const express = require('express')
const mysql = require('mysql');
const app = express()
const port = 3000

const connection = mysql.createConnection({
  host     : '18.216.0.138',
  user     : 'akim',
  password : '2020Oasis$',
  database : 'test_akim'
});
 
connection.connect();

// connection.query(`
// CREATE TABLE IF NOT EXISTS users (
//     user_id BINARY(16) PRIMARY KEY,
//     user_name VARCHAR(255) ,
//     password_hash VARCHAR(255),
//     location_id ,
//     occupation_id
// )
// `)

app.post('/users', (req, res) => {
    connection.query('INSERT INTO users blah blah blah', function (error, results, fields) {
        if (error) throw error;
        
    });
})

app.listen(port, () => console.log(`Example app listening at http://localhost:${port}`))