const express = require('express')
const mysql = require('mysql');
const {body, validationResult} = require('express-validator/check');
const { sanitizeBody } = require('express-validator/filter');
const path = require('path');
const app = express()
const port = 3000
const public = path.join(__dirname, '../public')
const connection = mysql.createConnection({
  host     : '18.216.0.138',
  port     : '53380',
  user     : 'akim',
  password : '2020Oasis$',
  database : 'mvp1'
});
 
// connection.connect();

app.use(express.static(public))

app.get('/', (req, res)=>{
  res.sendFile(path.join(public, 'coming-soon.html'))
})

app.post('/user-email', (req, res) => {
  console.log("hey")
  body('email', 'invalid email').isEmail().normalizeEmail()

  // connection.query('INSERT INTO Users ', function (error, results, fields) {
  //     if (error) throw error;
  //     console.log('connected');
  // });
})

app.listen(port, () => console.log(`Example app listening at http://localhost:${port}`))