const express = require('express')
const mysql = require('mysql');
const {body, validationResult} = require('express-validator');
const { sanitizeBody } = require('express-validator');
const path = require('path');
const app = express()
const port = 3000
const public = path.join(__dirname, '../public')

app.listen(port, () => console.log(`Listening at http://localhost:${port}`))

app.use(express.static(public))
app.use(express.urlencoded({
  extended: true
}))

app.get('/', (req, res)=>{
  res.sendFile(path.join(public, 'coming-soon.html'))
})

const mysqlx = require('@mysql/xdevapi')

app.post('/user-email', [
  body('email').isEmail().normalizeEmail()
], (req, res)=> {
  const errors = validationResult(req)
  // Connect to server using a connection URL
  mysqlx
    .getSession({
      user: 'oasismysql',
      password: '2020Oa$iS',
      host: '18.216.0.138',
      port: 33060
      })
    .then(function (session) {
      // Accessing an existing table
      const myTable = session.getSchema('mvp1').getTable('Users');
      // Insert SQL Table data
      myTable
        .insert(['user_id', 'email', 'user_name', 'password_hash', 'location_id','occupation_id'])
        .values([null, req.body.email, null, null, null, null])
        .execute()
      res.send('all good!')
    })
    .catch(error => {
      console.log(error)
      res.send(400)
    });
});




// const connection = mysql.createConnection({
//   host     : '18.216.0.138',
//   port     : 33060,
//   user     : 'akim',
//   password : '2020Oasis$',
//   database : 'mvp1'
// });

// connection.connect();

// app.post('/user-email', (req, res) => {
//   console.log("trying to connect")
//   // body('email', 'invalid email').isEmail().normalizeEmail()

//   connection.query('SELECT * FROM Users', function (error, results, fields) {
//       if (error) throw error;
//       console.log('connected');
//   });
// })






// const connection = mysql.createConnection({
//   host     : '18.216.0.138',
//   port     : '53380',
//   user     : 'akim',
//   password : '2020Oasis$',
//   database : 'mvp1'
// });
 
// connection.connect((err) => {
//   if(err){
//     console.log('Error connecting to Db');
//     console.log(err)
//     return;
//   }
//   console.log('Connection established');
// });

// connection.end((err) => {
//   console.log("ending connection")
// });

// app.post('/user-email', (req, res) => {
//   console.log("trying to connect")
//   // body('email', 'invalid email').isEmail().normalizeEmail()

//   connection.query('SELECT * FROM Users', function (error, results, fields) {
//       if (error) throw error;
//       console.log('connected');
//   });
// })
