// // #Two seperate 4 element arrays


// var horse_Colors = ["brown", "black", "white", "pink"];

// var horse_Names = ["Blondie", "Rapunzel", "Spirit", "Northern Dancer"]

// horse_Colors.push("beige")

// horse_Names.push("Always Dreaming")



// #Release 2

// #Create empty object
// #Loop through both arrays and assign colors to names
// #Push data into empty object
// #Return Object

// function pair_data(colors, names){
//   var pairobj = {}
//   for(var i = 0; i < colors.length; i++){
//     // console.log(colors[i])
//     // console.log(names[i])
//     pairobj[names[i]] = colors[i]
//   }

//   return pairobj
// }
// pair_data(horse_Colors,horse_Names);


function Car(make, model, isNew){

  console.log("This car is: ", this);

  this.make = make;
  this.model = model;
  this.isNew = isNew;

  this.revEngine = function() { console.log("Froooooommmmmm"); };

  console.log("Car design")

}

console.log("Here is another car in the assembly line");
var newCar = new Car("BMW", "sedan", true);
console.log(newCar);
console.log("Our new car is really fast");
newCar.revEngine();


console.log("Here is another car in the assembly line");
var secondCar = new Car("Chevy", "truck", false)
console.log(secondCar);
console.log("This truck is slower, but really loud");
newCar.revEngine();


console.log("Here is another car in the assembly line");
var thirdCar = new Car ("Mazda", "SUV", true);
console.log(thirdCar);
console.log("This is a small suv but it has some horsepower");
newCar.revEngine();
