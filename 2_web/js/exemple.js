// finir ligne de code par ;


var message = "Bienvenue";

//console.log(message); // pour print quelques chose dans la console, et variable doit être avant définie

//function ma_fonction() {
  //  console.log('ma fonction');
//}

//ma_fonction();

//for (var i = 0 ; i < 10; i++ ) {    // départ, jusquà combien, on incérement i
    // i = 2 => i++ c'est dire c'est égal à 3 => i + 1
  //  console.log(i);
//}






//DOM : document object model == comment une page est reprséenter su page web
// ce qui est sur html est intepréte par navigateur - et va créer un arbre
// dans le navigateur il y a un document (c'est l'arbre), qu'on peut vir depuis js
// arbre contient html =head,body ... ainsi de suite avec les élemens à l'intérieur 
// y a aussi enfant spécial : valeur définie (ex texte), et aussi il y a attribut( id, class)
// attribut font partie des objets - <..> suit avec l'attribut



console.log(document.querySelector('.important').textContent) // peremt de chercher un élément particulier dans le DOM
// même syntaxe que css

console.log(document.getElementById('Bienvenue').textContent)

//ajouter élément dans DOM
function ajouter_perso() {
    var nom_perso = 'Jean';

    var nouveau_li = document.createElement('li'); //liste ?
    var nouveau_text = document.createTextNode(text_personnage);
    



    console.log('perso');
}




