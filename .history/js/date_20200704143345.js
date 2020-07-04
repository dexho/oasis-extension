const thedate = new Date();
// const todaysDay = thedate.getDate();
const today = thedate.toDateString();
const todaytime = thedate.toTimeString();

const time = thedate.getHours() + ":" + thedate.getMinutes();

console.log(today);
console.log(todaytime);

