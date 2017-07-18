// #Two seperate 4 element arrays


var horse_Colors = ["brown", "black", "white", "pink"];

var horse_Names = ["Blondie", "Rapunzel", "Spirit", "Northern Dancer"]

horse_Colors.push("beige")

horse_Names.push("Always Dreaming")



// #Release 2

// #Create empty object
// #Loop through both arrays and assign colors to names
// #Push data into empty object
// #Return Object

function pair_data(colors, names){
  var pairobj = {}
  for(var i = 0; i < colors.length; i++){
    // console.log(colors[i])
    // console.log(names[i])
    pairobj[names[i]] = colors[i]
  }

  return pairobj
}
pair_data(horse_Colors,horse_Names);