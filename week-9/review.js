// Function to create a list
// input: string of items separated by spaces (example: "carrots apples cereal pizza")
// steps: 
//    break up string by space and store each as objects
//	  set default quantity to zero
//    print the list to the console
// output: return a list and their quantity

var groceryList = {};

function createList (list, stringList){
	var splitList = aString.split(" ");
	for (var item in splitList){
		groceryList[splitList[item]] = 0;	
	}
}

// Function to add an item to a list
// input: item name and quantity
// steps:
//		place item and quanity into the list as
//			object value pairs
// output: new list with the new item included

function addItem (item, quantity){
	groceryList[item] = quantity;
}


// Function to remove an item from the list
// input: item name
// steps:
//		remove the item name that matches the string in
//			the object
// output: return a list with the item removed

function removeItem(item){
	delete groceryList[item];
}

// Function to update the quantity of an item
// input: item name and quantity
// steps:
//		match the item name and update the quantity
// output: return a new list with update

function updateItem(item, quantity){
	groceryList[item] = quantity;
}

// Function to print a list and make it look pretty
// input: the entire list
// steps:
//		print each item
//s output: a printed list of item names and its quantity

function printList(list){
	for (item in list){
		console.log("You have " + list[item] + " " + item + " to buy.");
	}
}

////////////// Driver Code
var aString = "carrots apples cereal pizza";
createList(groceryList, aString);
console.log("You created the following grocery list:");
console.log(groceryList);

addItem("cheese", 40);
console.log("Your list should now have cheese added to it:");
console.log(groceryList);

removeItem("apples");
console.log("Your list should now have apples removed:");
console.log(groceryList);

updateItem("pizza", 20);
console.log("Pizza's quantity should be updated to 20:");
console.log(groceryList);

printList(groceryList);

// Refactor
/////////////////////////////////////////////////

// var aString = "carrots apples cereal pizza";

// var groceryList = {
// 	createList: function(stringList){
// 		var splitList = aString.split(" ");
// 		for (var item in splitList){
// 			groceryList[splitList[item]] = 0;	
// 		}
// 	},

// 	addItem: function(item, quantity){
// 		groceryList[item] = quantity;
// 	},

// 	removeItem: function(item){
// 		delete groceryList[item];
// 	},

// 	updateItem: function(item, quantity){
// 		groceryList[item] = quantity;
// 	},

// 	printList: function(){
// 		console.log(groceryList);
// 		// for(item in groceryList){
// 		// 	console.log("You have " + groceryList[item] + " " + item + " to buy.");
// 		// }
// 	}
// };

// groceryList.createList(aString);
// groceryList.addItem("cheese", 30);
// groceryList.removeItem("apples");
// groceryList.updateItem("pizza", 20);
// groceryList.printList();
//////////////////////////////////////////////////
//What concepts did you solidify in working on this challenge?
//(reviewing the passing of information, objects, constructors, etc.)
// I was trying to make the functions inherit properties of groceryList by placing them inside the
// ojbect itself. However, I ended up with an object with a list as well as those functions. My goal
// was to make an object that has the ability to perform each functions, and let another object call
// on this object so that it can inherit its functions. Instead I ended up with a groceryList of functions
// and object value pairs. I'm not sure if it's the right way to go about this.

// What was the most difficult part of this challenge?
// If I wrote it similar to Ruby where each function just took in different parameters,
// then it's pretty easy. However, I think I tried to make it more complex.

// Did an array or object make more sense to use and why?
// Object makes more sense because we're dealing with names and its associated value.
