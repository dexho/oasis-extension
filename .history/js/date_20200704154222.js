const thedate = new Date();
const today = thedate.toDateString();
// const todaytime = thedate.toTimeString();
// const time = thedate.getHours() + ":" + thedate.getMinutes();

const dateId = document.getElementById("date").innerHTML = today;


// console.log(today);

console.log(moment().format('MMM Do'));
moment().format('LT');