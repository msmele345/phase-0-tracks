// #Psuedo for 7.1
// Create a new function called reverse_String that takes a string as a parameter
// Create a new variable named reversed and set it to empty ('')
// Iterate through the string backwards by starting at the last index character first and decrementing towards the first
// Add each character to the empty string
// Print reversed string at the end


function reversed_String(string) {
  var reversed = '';
  for(var i = string.length-1; i>=0; i--){
    reversed+=string[i]
  }
  if(reversed.length > 1){
    console.log(reversed)
  }
}

reversed_String("Hello")
reversed_String("Only two more weeks until onsite!")
