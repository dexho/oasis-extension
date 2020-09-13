var hour = new Date().getHours();


if (hour < 6 || hour > 20) { 
    gradient = "linear-gradient(-15deg, #141414 0%, #2f455a 100%)";
    document.getElementById("dash-wrapper").style.background = gradient;
    document.getElementById("island-night").style.opacity = 0.85;
    document.getElementById("island-day").style.opacity = 0;
    document.getElementById("date").style.color = "#768A9D";
    document.getElementById("month").style.color = "#768A9D";
    document.getElementById("date").style.opacity = 0.5;
    document.getElementById("month").style.opacity = 0.4;
    document.getElementById("location").style.opacity = 0.7;
}