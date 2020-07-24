// const thedate = new Date();
// const today = thedate.toDateString();
// const todaytime = thedate.toTimeString();
// const time = thedate.getHours() + ":" + thedate.getMinutes();
// console.log(today);

const date = moment().format('dddd MMM Do');
const time = moment().format('LT');

const dateId = document.getElementById("date").innerHTML = date;
