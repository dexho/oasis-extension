const express = require('express')
const mysql = require('mysql');
const {body, validationResult} = require('express-validator/check');
const { sanitizeBody } = require('express-validator/filter');
const path = require('path');
const app = express()
const port = 3000
const public = path.join(__dirname, '../public')

app.listen(port, () => console.log(`Listening at http://localhost:${port}`))

app.use(express.static(public))

app.get('/', (req, res)=>{
  res.sendFile(path.join(public, 'coming-soon.html'))
})

const connection = mysql.createConnection({
  host     : '18.216.0.138',
  port     : '53380',
  user     : 'akim',
  password : '2020Oasis$',
  database : 'mvp1'
});
 
connection.connect((err) => {
  if(err){
    console.log('Error connecting to Db');
    return;
  }
  console.log('Connection established');
});

connection.end((err) => {
  console.log("ending connection")
});


// app.post('/user-email', (req, res) => {
//   console.log("trying to connect")
//   // body('email', 'invalid email').isEmail().normalizeEmail()

//   connection.query('SELECT * FROM Users', function (error, results, fields) {
//       if (error) throw error;
//       console.log('connected');
//   });
// })
