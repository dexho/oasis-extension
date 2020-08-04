const express = require('express')
var mysqlx = require('@mysql/xdevapi');
var myTable;

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
	myTable = session.getSchema('mvp1').getTable('Information');
	return myTable
    	.select(['info_id', 'url', 'text'])
    	.where('info_id like 1')
    	.execute(function (row) {
      	console.log(row);
    	});
  })
  .then(function (myResult) {
	console.log(myResult);
  });
