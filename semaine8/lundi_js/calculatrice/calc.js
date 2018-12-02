// les lignes suivantes sont juste un memo, a ignorer

// function my_max(array){
//     var max = array[0];
//     for (var i = 0 ; i < array.length; i++ )  {
//       if(max < array[i]){
//         max = array[i];
//       }
//     }
//     return max
//   }
// console.log(my_max(testArray));


function add_in_array(){

}

function initElement()
{
  var p = document.getElementById("button7");
  var l = document.getElementById("button8");

  // NOTE: showAlert(); ou showAlert(param); NE fonctionne PAS ici.
  // Il faut fournir une valeur de type function (nom de fonction déclaré ailleurs ou declaration en ligne de fonction).
  p.onclick = showAlert;
  l.onclick = showAlert;
};

function showAlert()
{
  alert("Evènement de click détecté");
}












function add(nbr1, nbr2){
  return nbr1 + nbr2;
}

function substract(nbr1, nbr2){
  return nbr1 - nbr2;
}

// apparement en js, la division return un nombre a virgule
function divide(nbr1, nbr2){
  return nbr1 / nbr2;
}

function multiply(nbr1, nbr2){
  return nbr1 * nbr2;
}

console.log(add(3, 89))
console.log(add(-89, 89))
console.log(substract(3, 4))
console.log(substract(100, 90))
console.log(divide(50, 3))
console.log(multiply(5, 20))