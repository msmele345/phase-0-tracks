// RELEASE 0

// Create new function that takes an array as a parameter and returns the longest string in the array

// Declare variables. One for current length of 0, and the other to assign the longest string element to as we iterate through

//Loop through the array and check the lengths of each element. If the current element is the longest, update the length variable and assign the current element to longest.

//Return the longest string

//INPUT = An array of strings, all with different lengths
//OUTPUT = a single string that is the longest out of all of the strings in the array.


function longest_String(string_Array) {
  var length = 0;
  var longest;
  for(var i = 0; i < string_Array.length; i++ ){
    if (string_Array[i].length > length){
      length = string_Array[i].length
      longest = string_Array[i]
    }

  }

  console.log(longest);
}


longest_String(["long phrase","longest phrase","longer phrase"]);