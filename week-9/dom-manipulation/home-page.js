// DOM Manipulation Challenge


// I worked on this challenge [with: David Walden].


// Add your JavaScript calls to this page:

// Release 0:

//Release 1:
var addAClass = document.getElementById("release-0");
addAClass.className += "done";

// Release 2:
var elem = document.getElementById("release-1");
elem.parentNode.removeChild(elem);


// Release 3:
var x = document.getElementsByTagName("H1");
x[0].innerHTML = "I completed release 2.";

// Release 4:
var release4 = document.getElementById("release-3");
release4.style.backgroundColor = "#955251";

// Release 5:
var release5 = document.getElementsByClassName("release-4");
for (var i in release5){
	release5[i].style.fontSize = "2em";
}
//Release 6:
// var tmpl = document.querySelector('#hidden');
// var clone = tmpl.content.cloneNode(true);
// tmpl.parentNode.appendChild(clone);

var tmpl = document.getElementById("hidden");
document.body.appendChild(tmpl.content.cloneNode(true));

// var theParagraph = document.getElementById("hidden");
// var theCopy = theParagraph.cloneNode(true);
// var theBody = document.getElementsByTagName("body");
// theBody[0].appendChild(theCopy);