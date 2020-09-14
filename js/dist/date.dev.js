"use strict";

// const thedate = new Date();
// const today = thedate.toDateString();
// const todaytime = thedate.toTimeString();
// const time = thedate.getHours() + ":" + thedate.getMinutes();
// console.log(today);
var date = moment().format('ddd' + ', ');
var month = moment().format('MMM Do');
var lowerDate = date.toLowerCase();
var lowerMonth = month.toLowerCase();
var time = moment().format('LT');
var dateID = document.getElementById("date").innerHTML = lowerDate;
var monthID = document.getElementById("month").innerHTML = lowerMonth;
var timeID = document.getElementById("time").innerHTML = time;