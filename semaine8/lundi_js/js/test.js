//var f = 100;
//console.log("La variable f contient la valeur " + f);

// var prenom = prompt("Entrez votre prénom :");
// var nom = prompt("votre nom :")
// alert("Bonjour, " + prenom + " " + nom);

// var nb = Number(prompt("Entrez un nombre : ")); // nb est de type nombre

// var nombre = Number(prompt("Entrez un nombre :"));

// // NON : inverse la valeure d'une condition, si nombre N'EST PAS superieur a 100
// if (!(nombre > 100)) {

//     console.log(nombre + " est inférieur ou égal à 100");

// }

// if (nombre === 0) {

//       console.log(nombre + " est positif");
//       alert("Vous avez choisis le 0")
//       // pour le signe &&, bien penser a mettre les parenthese en plus debut et fin de l'instruction comme exemple suivant
// } else if ((nombre >= 1) && (nombre <= 100)){
//       alert("Nbr positif")
//       // marche pareil pour le || (ou)
// } else if ((nombre >= 1) && (nombre >= 100)){
//       alert("nombre plus grand que 100")     
// } else if (nombre < 0) {
//       alert("nbr negatif")
// } else {
//       alert("pas un nombre")
// }



// var meteo = prompt("Quel temps fait-il dehors ?");
// switch (meteo) {
// case "soleil":
//     alert("Sortez en t-shirt.");
//     break;
//     //dans un switch, tjr mettre un break sinon le programme effectue aussi les actions des autres case
// default:
//     console.log("Je n'ai pas compris !");
// }

window.setTimeout(function () {
    alert("Tjr la?") // Ce code sera éxécuté une fois au bout de 3 secondes (3000ms)
}, 3000 )

window.setInterval(function () {
     alert("Tjr la??") // Ce code sera appellé toutes les secondes (1000ms)
}, 5000)

window.setInterval(function () {
     alert("Clique Ici !") // Ce code sera appellé toutes les secondes (1000ms)
}, 7000)