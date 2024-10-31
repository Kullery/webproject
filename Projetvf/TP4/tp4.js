function test_age(){
    let age = prompt("Quel est votre âge ?");
    if (age<18) {
        document.write("Vous êtes mineur");
        document.body.style.backgroundColor="red";
    }
    else {
        document.write("Vous êtes majeur");
        document.body.style.backgroundColor="green";
    }
}

function calcul_moyenne(){
    var n1 = prompt("Entrer la première note: ");
    var n2 = prompt("Entrer la deuxième note: ");
    var n3 = prompt("Entrer la troisième note: ");

    var somme = Number(n1) + Number(n2) + Number(n3);

    document.write("Voici la somme: " + somme + "<br>");
    var moyenne = somme/3;

    document.write("Voici la moyenne: " + moyenne + "<br> <hr>");


if (moyenne>=10) {
    if (moyenne==12){
        document.write("Mention assez bien <br>");
        document.body.style.backgroundColor="green";
    }
    else if (moyenne==14) {
        document.write("Mention bien <br>");
        document.body.style.backgroundColor="green";
    }
    else{
        document.write("Vous êtes admis <br>");
        document.body.style.backgroundColor="green";
    }
}
else if(moyenne<10) {
    document.write("Redoublant <br>");
    document.body.style.backgroundColor="red";
}
else{
    alert("Moyenne non conforme")  
} 
}

function test_couleur() {
    let couleur = prompt("Entrer une couleur");
    if (couleur == "rouge" || couleur == "red") {
        document.body.style.backgroundColor = "red"
    }
    else if (couleur == "bleu" || couleur == "blue") {
        document.body.style.backgroundColor = "blue"
    }
    else if (couleur == "green" || couleur == "vert") {
        document.body.style.backgroundColor = "green"
    }
    else if (couleur == "rose" || couleur == "pink") {
        document.body.style.backgroundColor = "pink"
    }
    else if (couleur == "yellow" || couleur == "jaune") {
        document.body.style.backgroundColor = "yellow"
    }
    else if (couleur == "grey" || couleur == "gris") {
        document.body.style.backgroundColor = "grey"
    }
    else if (couleur == "brown" || couleur == "marron") {
        document.body.style.backgroundColor = "brown"
    }
    else if (couleur == "white" || couleur == "blanc") {
        document.body.style.backgroundColor = "white"
    }
    else if (couleur == "noir" || couleur == "black" || couleur == "noire") {
        document.body.style.backgroundColor = "black"
    }
    else {
        alert("Couleur non conforme")
    }
}

function simple_affichage() {
    var prenom = prompt("Votre prénom: ");
    var nom = prompt("Votre nom: ");
    document.write("Je m'appelle " + prenom + " " + nom + ".")
        
}