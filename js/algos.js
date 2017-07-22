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


//RELEASE 1
// Function takes two parameters - both objects
//Loop through each object and use comparison operators to compare keys from obj1 to the keys of obj2
//Create default boolean variable to false
//loop through objects (Two seperate loops?) and return false if there is no match
//Return true at the end if both loops fail to return false
//INPUT = Two objects being passed in
//OUTPUT = True/False boolean if there is a match or not


function compareObjects (obj1, obj2){
  var match = false
  for(var key1 in obj1){
    if(obj2[key1] == obj1[key1])
      match = true;
  }

  for(var key2 in obj2){
    if (obj1[key2] == obj2[key2]){
      match = true;
    }
  }
  console.log(match)
}



//Release 1
compareObjects({name: "Steven", age: 54}, {name: "Tamir", age: 54});
compareObjects({name: "Steven", age: 54}, {name: "Tamir", age: 27});




//Release 0
longest_String(["long phrase","longest phrase","longer phrase"]);
longest_String(["aaaaaaaaaaa", "bbbbbb", "cccccccccccc"])




