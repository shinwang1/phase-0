
//Your previous Ruby content is preserved below:

// JavaScript Olympics

// I paired [with: Victoria Solorzano] on this challenge.

// This challenge took me [1hr] hours.


// Warm Up


// Bulk Up

var athlete1 = {name: "Tom", event: "100 meter dash"};
var athlete2 = {name: "Bob", event: "200 meter dash"};

var athleteArray = [athlete1, athlete2];

function addWin(array) {
  for (var i in array) {
    array[i].win = function() {
      console.log(this.name + " won the " + this.event + ".");
    };
  }
  
};

// addWin(athleteArray);

// console.log(athlete1);
// console.log(athlete2);

// athlete1.win();
// athlete2.win();



// Jumble your words

function reverseString(stringInput){
  var stringArray = stringInput.split("").reverse().join("");
  return stringArray;
}


// console.log(reverseString("heythere"))

// 2,4,6,8
function is_even(array){
  function evenNumber(anArray){
    return anArray % 2 == 0;
  }

  var returnedEvens = array.filter(evenNumber);
  return returnedEvens;
}

// console.log(is_even([1,2,3,4,5,6]));
function Athlete(name, age, sport, quote){
  this.name = name;
  this.age = age;
  this.sport = sport;
  this.quote = quote;
}


// "We built this city"

var michaelPhelps = new Athlete("Michael Phelps", 29, "swimming", "It's medicinal I swear!")
console.log(michaelPhelps.constructor === Athlete)
console.log(michaelPhelps.name + " " + michaelPhelps.sport + " " + michaelPhelps.quote)


// Reflection
What JavaScript knowledge did you solidify in this challenge?
	I was able to practice using objects and functions. Mainly, adding and changing
	properties that are in predefined objects. I also brushed up on function declaration and
	function expression.

What are constructor functions?
	Constructor functions can create multiple objects with same set of properities and methods.
	For example, I can have a Movie function and I can create a new instance of a movie title follows
	the constructor for Movie.

How are constructors different from Ruby classes (in your research)?
	Ruby classes seems to have some extra functionalities. For example, you can restrict the readability
	and writability of instance variables within the Class. For JS, I don't think this is possible. What
	I see for constructors is that JS treats the initializing as a function, then each additional thing
	is an objects created with the "new". Within Ruby, you have to have a method that initialize a thing
	to be created for a Class.