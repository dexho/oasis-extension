const thedate = new Date();
const today = thedate.toDateString();
const todaytime = thedate.toTimeString();

const time = thedate.getHours() + ":" + thedate.getMinutes();

if(time > "12:00"){
    console.log("hi")
    console.log(time - 1200)
}

console.log(today);
console.log(time);

