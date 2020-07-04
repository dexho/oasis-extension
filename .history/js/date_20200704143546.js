const thedate = new Date();
const today = thedate.toDateString();
const todaytime = thedate.toTimeString();

const time = thedate.getHours() + ":" + thedate.getMinutes();

console.log(today);
console.log(time);

