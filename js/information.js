const informationShape = document.getElementById("info-tab");
const info = document.getElementById("info");

// informationShape.addEventListener("click", function(e){
//     alert('yea');
    
// })


informationShape.addEventListener("click", showInfo, false);

var counter=0;

function showInfo(e){
    alert('yes')
    info.classList.add("show");
    document.body.style.overflow = "hidden";
}

function hideInfo(e){
    counter-1;
    info.classList.remove("show");
    e.stopPropagation();
    document.body.style.overflow = "auto";
}
