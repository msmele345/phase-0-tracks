console.log("The script is working!")

// var photo = document.getElementById("image");
// photo.style.border = "2px solid red";

function addBorder (event) {
  console.log("This worked")
  console.log(event)
  event.target.style.border = "14px solid red";

}

var photo = document.getElementById("image");
photo.addEventListener("click", addBorder);


function buttonTest (event){
  console.log("Button is changing")
  console.log(event)
  var text = document.getElementById("text2");
  text.value = "!!!!!WHOA!!!!"
}

// Added Input element of text on lines 28-30 to test buttonTest function

var button = document.getElementById("button1");
button.addEventListener("click", buttonTest)