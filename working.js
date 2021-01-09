//Hey, comments just like C++
//Just messing with the button
document.getElementById("button").onclick = function() {
  document.getElementById("hurt_feelings").innerHTML = "Thank you!";
  document.getElementById("button").style.display = "none";
}


//Asking for username - going to be too much of a bother?
var username = prompt();
console.log(username);

(function() {
  //IIFE - immediately invoked function expresssion
  //Note syntax!!
  var cake = 9;
})();
{
  let m = 10;
  const tim = 99;
  //More modern solution - let can be used
  //Within blocks to not clog up global memory
  //Same for const
}

//Object: Key and value pairs
//Basically a class?
let person = {
  name: "Bob",
  age: 75,
  food: "Mac and cheese",
  grades: [19, 22, 36, 48],
  get_age: function(){
    console.log(age);
  },
}

//Nums can be represented by infinty/- infinity, or not a number
//If need be

//Parse int & float

{
  let x = 9;
  let y = "29";
  let yInt = Number.parseInt(y);
  //Can convert string to num
}

//String
{
  let help = "hownow";
  help.concat(" is the belldow");
  let search1 = "how";
  help.includes(search1);
}

//Objects PT II
{
  let postion = {
    x: 10,
    y: 20,
    print: function()
    {
      console.log(`X: ${this.x}, Y: ${this.y}`);
    },
  }

  //If you set a variable equal to an object,
  //Their properties will point to the same place
  //${....} how to put in stuff a print statement or console log
}

//If statements follow the same style as C++
//"===" will check data type, not just convert


//Ternary practice
{
  let name = "John";
  let points = name === "John" ? 10 : 0;
}

//Loops function almost the same as C++
{
  let d = document.getElementById("destination");
  for(let i = 0; i < 10; i++)
  {
    for(let k = i; k>=0; k--)
    {
      d.append(k + " ");
    }
    var br = document.createElement('br');
    d.appendChild(br);
  }
}
