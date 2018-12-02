// Écris une fonction my_max() qui prend une array et qui retourne le nombre maximum

var testArray = [-14, -222, -3, -64, -5, -1023, -1, ];

function my_max(array){
    var max = array[0];
    for (var i = 0 ; i < array.length; i++ )  {
      if(max < array[i]){
        max = array[i];
      }
    }
    return max
  }
console.log(my_max(testArray));

// Écris une fonction vowel_count() qui prend un string et qui retourne le nombre de voyelles

var testString = "Je suis une string !";
var myRegex = /[aeiouy]/g;

function vowel_count(string){
  // console.log(split);
  var vowel = string.match(myRegex);
  return vowel
}

console.log(vowel_count(testString).length)

// Écris une fonction reverse() qui prend un string et qui renvoie les caractères en position inverse. Ainsi, Bonjour monde ! devient ! ednom ruojnoB

function reverseString(str) {
    // // Step 1. Use the split() method to return a new array
    // var splitString = str.split(""); // var splitString = "hello".split("");
    // // ["h", "e", "l", "l", "o"]
 
    // // Step 2. Use the reverse() method to reverse the new created array
    // var reverseArray = splitString.reverse(); // var reverseArray = ["h", "e", "l", "l", "o"].reverse();
    // // ["o", "l", "l", "e", "h"]
 
    // // Step 3. Use the join() method to join all elements of the array into a string
    // var joinArray = reverseArray.join(""); // var joinArray = ["o", "l", "l", "e", "h"].join("");
    // // "olleh"
    
    // //Step 4. Return the reversed string
    // return joinArray; // "olleh"
    return str.split("").reverse().join("");
    // ici on fais en une seule etape le split / reverse / join
}
 
console.log(reverseString("hello"));