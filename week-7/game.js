// Design Basic Game Solo Challenge

// This is a solo challenge

// Your mission description: The Monty Hall Problem.
	// Guess the right door and win a prize. There will be a total of three doors
	// with one prize behind one door and nothing behind the other two. When you
	// guess for the first time, you will then be shown another door with no prize
	// behind it before your door is opened. You will then be asked to reconsider your
	// choice. If you stay, then your first choice will be revealed. If you change, then
	// the other door will be revealed.
//
// Overall mission: Try to guess the prize behind the door.
// Goals: Win the prize.
// Characters: Three doors.
// Objects: One door will have the prize, the other two won't.
// Functions:
//		One function will put the prize behind one door randomly and no prize in the
//		other two.
//		One function will remember which door has the prize so that it will open a door
//		without the prize after the user made his/her frist choice.
//		One function will open the door of the user's final choice.

// Pseudocode
// Define three variables: door1, door2, and door3 and use object literal notation
//	to assign each a name propery with values: "Door 1", "Door 2", and "Door 3"
//	respectively.
// Add a Boolean property called prize to each door object. Set the value to all of
//	these to false by default.
// Write a function to randomize a value between 1 to 3. The result will change the
//	prize value behind the door property from false to true.
// Write a function that asks the user to choose a door and store this value
// Write a function that show a door without the prize and ask the user if he/she
//	wants to choose a different door. If a different door is chosen, then the previous
//	function is overwritten.
//	Write a function that compare the user's choice with the door boolean. Output
//	whether the user wins a prize.

// Initial Code
// var door1 = {
// 	name: "Door 1",
// 	prize: false
// }

// var door2 = {
// 	name: "Door 2",
// 	prize: false
// }

// var door3 = {
// 	name: "Door 3",
// 	prize: false
// }

// var userPicks = {
// 	pickedNumber : 0
// }

// var showDoor = {
// 	noPrizeDoor : 0
// }

// var userDecision = {
// 	switchDoor : 0
// }

// function randomPrize (door1, door2, door3){
// 	var generate_number = Math.floor((Math.random() * 3) + 1);
// 	if (generate_number == 1){
// 		door1.prize = true;
// 	} else if (generate_number == 2){
// 		door2.prize = true;
// 	} else if (generate_number == 3){
// 		door3.prize = true;
// 	}
// 	console.log(generate_number);
// }

// function getUserInput (){
// 	// Code I would use if I knew how to prompt the user in node <file>.js in terminal
// 	//var userPicks = prompt("Pick a door number: Door 1, Door 2, or Door 3.");
// 	//console.log("You have chosen Door Number: " + userPicks);

// 	userPicks.pickedNumber = Math.floor((Math.random() * 3) + 1);
// 	console.log("You have chosen Door Number: " + userPicks.pickedNumber);
// 	//return userPicks;
// }

// function showNoPrize (door1, door2, door3, userPicks, showDoor){
// 	//var showDoor = 0;
// 	if (userPicks.pickedNumber == 1 && door1.prize == true){
// 		showDoor.noPrizeDoor = Math.floor((Math.random() * 2) + 2);
// 	} else if (userPicks.pickedNumber == 1 && door2.prize == true){
// 		showDoor.noPrizeDoor = 3;
// 	} else if (userPicks.pickedNumber == 1 && door3.prize == true){
// 		showDoor.noPrizeDoor = 2
// 	} else if (userPicks.pickedNumber == 2 && door2.prize == true){
// 		if (Math.floor((Math.random() * 2) + 1) == 1){
// 			showDoor.noPrizeDoor = 1;
// 		} else {
// 			showDoor.noPrizeDoor = 3;
// 		}
// 	} else if (userPicks.pickedNumber == 2 && door1.prize == true){
// 		showDoor.noPrizeDoor = 3;
// 	} else if (userPicks.pickedNumber == 2 && door3.prize == true){
// 		showDoor.noPrizeDoor = 1;
// 	} else if (userPicks.pickedNumber == 3 && door3.prize == true){
// 		showDoor.noPrizeDoor = Math.floor((Math.random() * 2) + 1);
// 	} else if (userPicks.pickedNumber == 3 && door1.prize == true){
// 		showDoor.noPrizeDoor = 2;
// 	} else if (userPicks.pickedNumber == 3 && door2.prize == true){
// 		showDoor.noPrizeDoor = 1;
// 	}
// 	console.log("Door Number: " + showDoor.noPrizeDoor + " does not have a prize. Do you want to change doors. Y/N?")
// }

// function userDecide (userDecision){
// 	//Do not currently know how to get user input, thus I'm generating an user decision to switch doors.
// 	userDecision.switchDoor = Math.floor((Math.random() * 2) + 1);
// 	if (userDecision.switchDoor == 1){
// 		console.log("You've chosen another door.");
// 	} else if (userDecision.switchDoor == 2){
// 		console.log("You've chosen stay with your previous door.");
// 	}
// }

// function openDoor (door1, door2, door3, userPicks, showDoor, userDecision){
// 	if (userDecision.switchDoor == 1 && showDoor.noPrizeDoor == 1 && userPicks.pickedNumber == 2){
// 		console.log("Here is the prize for Door Number 3: " + door3.prize);
// 	} else if (userDecision.switchDoor == 1 && showDoor.noPrizeDoor == 1 && userPicks.pickedNumber == 3){
// 		console.log("Here is the prize for Door Number 2: " + door2.prize);
// 	} else if (userDecision.switchDoor == 1 && showDoor.noPrizeDoor == 2 && userPicks.pickedNumber == 1){
// 		console.log("Here is the prize for Door Number 3: " + door3.prize);
// 	} else if (userDecision.switchDoor == 1 && showDoor.noPrizeDoor == 2 && userPicks.pickedNumber == 3){
// 		console.log("Here is the prize for Door Number 1: " + door1.prize);
// 	} else if (userDecision.switchDoor == 1 && showDoor.noPrizeDoor == 3 && userPicks.pickedNumber == 1){
// 		console.log("Here is the prize for Door Number 2: " + door2.prize);
// 	} else if (userDecision.switchDoor == 1 && showDoor.noPrizeDoor == 3 && userPicks.pickedNumber == 2){
// 		console.log("Here is the prize for Door Number 1: " + door1.prize);
// 	} else if (userPicks.pickedNumber == 1) {
// 		console.log("Here is Door Number 1: " + door1.prize);
// 	} else if (userPicks.pickedNumber == 2){
// 		console.log("Here is Door Number 2: " + door2.prize);
// 	} else if (userPicks.pickedNumber == 3){
// 		console.log("Here is Door Number 3: " + door3.prize);
// 	}
// }


// Refactored Code
// I currently don't quite know how to refactor well in JS. If I could, I would simplify the logic
// for the two functions: showNoPrize and openDoor. However, I can only make the code look
// more like a nested if statement by bringing the logic test below the first controlling
// conditional,but that doesn't make it look any cleaner. What I can do it add some graphics
// to represent the doors.
var door1 = {
	name: "Door 1",
	prize: false
}

var door2 = {
	name: "Door 2",
	prize: false
}

var door3 = {
	name: "Door 3",
	prize: false
}

var userPicks = {
	pickedNumber : 0
}

var showDoor = {
	noPrizeDoor : 0
}

var userDecision = {
	switchDoor : 0
}

function doorOpened(){
	console.log(" -----");
	console.log("|     |");
	console.log("|     |");
	console.log("|GOAT |");
	console.log("|     |");
	console.log("|     |");
	console.log(" -----");
}

function doorClosed(){
	console.log(" -----     -----     -----");
	console.log("|  ?  |   |  ?  |   |  ?  |");
	console.log("|  1  |   |  2  |   |  3  |");
	console.log("|    o|   |    o|   |    o|");
	console.log("|     |   |     |   |     |");
	console.log("|  ?  |   |  ?  |   |  ?  |");
	console.log(" -----     -----     -----");
}

function doorPrize(){
	console.log(" -----");
	console.log("|     |");
	console.log("|     |");
	console.log("|Prize|");
	console.log("|     |");
	console.log("|     |");
	console.log(" -----");
}

function randomPrize (door1, door2, door3){
	var generate_number = Math.floor((Math.random() * 3) + 1);
	if (generate_number == 1){
		door1.prize = true;
	} else if (generate_number == 2){
		door2.prize = true;
	} else if (generate_number == 3){
		door3.prize = true;
	}
	console.log(generate_number);
}

function getUserInput (){
	// Code I would use if I knew how to prompt the user in node <file>.js in terminal
	//var userPicks = prompt("Pick a door number: Door 1, Door 2, or Door 3.");
	//console.log("You have chosen Door Number: " + userPicks);

	userPicks.pickedNumber = Math.floor((Math.random() * 3) + 1);
	console.log("You have chosen Door Number: " + userPicks.pickedNumber);
	//return userPicks;
}

function showNoPrize (door1, door2, door3, userPicks, showDoor){
	//var showDoor = 0;
	if (userPicks.pickedNumber == 1 && door1.prize == true){
		showDoor.noPrizeDoor = Math.floor((Math.random() * 2) + 2);
	} else if (userPicks.pickedNumber == 1 && door2.prize == true){
		showDoor.noPrizeDoor = 3;
	} else if (userPicks.pickedNumber == 1 && door3.prize == true){
		showDoor.noPrizeDoor = 2
	} else if (userPicks.pickedNumber == 2 && door2.prize == true){
		if (Math.floor((Math.random() * 2) + 1) == 1){
			showDoor.noPrizeDoor = 1;
		} else {
			showDoor.noPrizeDoor = 3;
		}
	} else if (userPicks.pickedNumber == 2 && door1.prize == true){
		showDoor.noPrizeDoor = 3;
	} else if (userPicks.pickedNumber == 2 && door3.prize == true){
		showDoor.noPrizeDoor = 1;
	} else if (userPicks.pickedNumber == 3 && door3.prize == true){
		showDoor.noPrizeDoor = Math.floor((Math.random() * 2) + 1);
	} else if (userPicks.pickedNumber == 3 && door1.prize == true){
		showDoor.noPrizeDoor = 2;
	} else if (userPicks.pickedNumber == 3 && door2.prize == true){
		showDoor.noPrizeDoor = 1;
	}
	console.log("Door Number: " + showDoor.noPrizeDoor + " does not have a prize. Do you want to change doors. Y/N?")
}

function userDecide (userDecision){
	//Do not currently know how to get user input, thus I'm generating an user decision to switch doors.
	userDecision.switchDoor = Math.floor((Math.random() * 2) + 1);
	if (userDecision.switchDoor == 1){
		console.log("You've chosen another door.");
	} else if (userDecision.switchDoor == 2){
		console.log("You've chosen stay with your previous door.");
	}
}

function openDoor (door1, door2, door3, userPicks, showDoor, userDecision){
	if (userDecision.switchDoor == 1 && showDoor.noPrizeDoor == 1 && userPicks.pickedNumber == 2){
		console.log("Here is the prize for Door Number 3: " + door3.prize);
		winner(door1, door2, door3, doorPrize);
	} else if (userDecision.switchDoor == 1 && showDoor.noPrizeDoor == 1 && userPicks.pickedNumber == 3){
		console.log("Here is the prize for Door Number 2: " + door2.prize);
		winner(door1, door2, door3, doorPrize);
	} else if (userDecision.switchDoor == 1 && showDoor.noPrizeDoor == 2 && userPicks.pickedNumber == 1){
		console.log("Here is the prize for Door Number 3: " + door3.prize);
		winner(door1, door2, door3, doorPrize);
	} else if (userDecision.switchDoor == 1 && showDoor.noPrizeDoor == 2 && userPicks.pickedNumber == 3){
		console.log("Here is the prize for Door Number 1: " + door1.prize);
		winner(door1, door2, door3, doorPrize);
	} else if (userDecision.switchDoor == 1 && showDoor.noPrizeDoor == 3 && userPicks.pickedNumber == 1){
		console.log("Here is the prize for Door Number 2: " + door2.prize);
		winner(door1, door2, door3, doorPrize);
	} else if (userDecision.switchDoor == 1 && showDoor.noPrizeDoor == 3 && userPicks.pickedNumber == 2){
		console.log("Here is the prize for Door Number 1: " + door1.prize);
		winner(door1, door2, door3, doorPrize);
	} else if (userPicks.pickedNumber == 1) {
		console.log("Here is Door Number 1: " + door1.prize);
		winner(door1, door2, door3, doorPrize);
	} else if (userPicks.pickedNumber == 2){
		console.log("Here is Door Number 2: " + door2.prize);
		winner(door1, door2, door3, doorPrize);
	} else if (userPicks.pickedNumber == 3){
		console.log("Here is Door Number 3: " + door3.prize);
		winner(door1, door2, door3, doorPrize);
	}
}

function winner(door1, door2, door3, doorPrize){
	if (door1.prize == true){
		console.log("Door Number 1 has the prize.")
		doorPrize();
	} else if (door2.prize == true){
		console.log("Door Number 2 has the prize.")
		doorPrize();
	} else {
		console.log("Door Number 3 has the prize.")
		doorPrize();
	}
}

// Driver Code
console.log("Starting out with three doors with no prizes:");
console.log(door1);
console.log(door2);
console.log(door3);
doorClosed();
console.log();

console.log("The prize is randomly put behind door: ");
randomPrize(door1, door2, door3);
console.log();

console.log("This is reflected with a true statement behind one of the three doors");
console.log(door1);
console.log(door2);
console.log(door3);
console.log();

console.log("This shows that the number picked by the user is no longer 0 (default).");
getUserInput();
console.log();

showNoPrize (door1, door2, door3, userPicks, showDoor);
doorOpened()
console.log();

userDecide (userDecision);

console.log();

openDoor (door1, door2, door3, userPicks, showDoor, userDecision);




// Reflection
// What was the most difficult part of this challenge?
	// I think limiting the scope was the most difficult part of the challenge. A game can have
	// simple mechanics or logic; however, adding one component (function or objects) can dramatically
	// change the behavior of the game.

// What did you learn about creating objects and functions that interact with one another?
	// I'm still not sure about how global variables work. What I think I did was to make objects (that I think act like
	// like global variables) outside the functions. When I need to call upon the object properties, I would
	// call them into functions. In fact, I think I've only used one or two local variables in the whole programs.
	// I'm not sure if my terminology is correct here. I will attend an office hour to verify.

// Did you learn about any new built-in methods you could use in your refactored solution?
// If so, what were they and how do they work?
	// I think the only build-in method that I used was Math. Since this challenge took a long time to code, I didn't have
	// time to find methods to refactor what I had coded. I will come back to this by the time I finish the rest of the assigments
	// for the week.

// How can you access and manipulate properties of objects?
	// I used dot notation to change the properties of the objects.
	