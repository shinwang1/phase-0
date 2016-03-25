// Separate Numbers with Commas in JavaScript **Pairing Challenge**


// I worked on this challenge with: Evan Druce.

// Pseudocode
// Input: integer
// Output: string with commas
// Steps:
//   1. Create a function that accepts an integer argument.
//   2. Change the integer into a string.
//   3. Break the string into an array of strings.
//   4. Reverse the array.
//   5. Interpolate a comma for every three digits.
//   6. Reverse the array.
//   7. Join the array into a string.
//   6. Print the string to console.


// Initial Solution
// function separateComma(integer){
//   var string = integer.toString();
//   var array = string.split("");
//   array = array.reverse();
//   for (var i = 3; i < array.length; i += 3){
//     array[i] += ",";
//   }
//   array = array.reverse();
//   array = array.join("");
//   console.log(array);
// }


// Driver Code
separateComma(100000000);
separateComma(100);
separateComma(1000);
separateComma(100000);
// Refactored Solution

function separateComma(integer){
  var separatedNumber = integer.toLocaleString();
  console.log(separatedNumber);
}

// Reflection
// What was it like to approach the problem from the perspective of JavaScript?
// Did you approach the problem differently?
// 	I approached the problem similarly in Pseudocode. There wasn't much difference until
// 	the syntax of the code itself.

// What did you learn about iterating over arrays in JavaScript?
// 	I used a for loop instead of a while loop. The variation is small, but useful.

// What was different about solving this problem in JavaScript?
// 	I noticed a difference when initilizing the variables within the funcition. You can't
// 	just initilize them whenver.

// What built-in methods did you find to incorporate in your refactored solution?
// 	We found the toLocaleString method to automatically put in commas for numbers.
