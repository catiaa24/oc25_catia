///////////////////////////////////////////////////////////////////////////11.11.25
// finir ligne de code par ;


//////////var message = "Bienvenue";

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



/////console.log(document.querySelector('.important').textContent) // peremt de chercher un élément particulier dans le DOM
// même syntaxe que css

/////console.log(document.getElementById('Bienvenue').textContent)


//Objet : cours
//Obejt esst une variable, qui contient plusieurs variable je crois,
// il y a des objet dans python : exemple avec - display.scroll("hello") -
// display c'est un objet
// un autre exemple c'est une personnage : jean_le_guerier ={
//  nom : 'jean'
//  classe : guerier ,
//} => utiliser donnée sur plusieurs pages.



//ajouter élément dans DOM
/////function ajouter_perso() {
    /////var nom_perso = 'Jean';

    /////var nouveau_li = document.createElement('li'); //liste ?
    /////var nouveau_text = document.createTextNode(text_personnage);
    



    /////console.log('perso');
/////}

//////////////////////////////////////////////////////////////////////13.11.25
var jean = {
  nom : 'jean',
  classe: 'guerier',
  niveau: 2,
  passer_niveau: function() {
    this.niveau++;
  }
};

console.log(jean);
console.log(jean.niveau);
jean.passer_niveau();
console.log(jean.niveau);

function creer_personnage(nom, classe, niveau) {
  var nouveau_personnage = {
      nom : nom,
      classe: classe,
      niveau: niveau,
      passer_niveau: function() {
        this.niveau++;
      },
      creer_li: function() {
        var li_personnage = document.createElement ('li');
        var texte_personnage = document.createTextNode(
          this.nom + ' (' + this.classe + ',niveau ' + this.niveau + ')'
        );
        li_personnage.appendChild(texte_personnage);
        li_personnage.setAttribute('class', this.classe) // dans html mettre avec css
        return li_personnage;

      }
    }
  
  return nouveau_personnage;

};



var nicole = creer_personnage('Nicole', 'voleur', 3);
console.log(nicole)

// concept du tableau : crochet : A = [..., ..., ...]
//même chsoe que en python : A[3] ...

var troupe = [
  creer_personnage('Jean', 'guerrier', 100),
  creer_personnage('Mathieu', 'voleur', 3),
  creer_personnage('Nicole', 'magicien', 2)
];



for (var i = 0; i < troupe.length; i++) {
  console.log(troupe[i].niveau)
};


/*on va mtn ajouter dans le html élément

var li_personnage = document.createElement ('li'); // élément créer c'est li - créer juste élément vide
pas relié à la page web

var texte_personnage = document.createTextNode('matteo');
on vient de créer valeur mais toujours pas relié au lif

li_personnage.appendChild(texte_personnage); // on rajoute élément à l'élément li
il sont relié mais pas relié à la liste dans page html
d'abord faut le trouver dans l'arbre de html

var liste_perso =document.getElementById('liste_de_perso');//va lire élément liste
même non que la classe de ul dans html

liste_perso.appendChild(li_personnage); // créer enfant dans ul de li
*/


// mettre dans une boucle


for ( var i = 0; i < troupe.length; i++) {
  var perso = troupe[i]; // ièeme perso de la boucle
  li_personnage = perso.creer_li();




  // var li_personnage = document.createElement ('li');
  // var texte_personnage = document.createTextNode(perso.nom);
  // li_personnage.appendChild(texte_personnage);




  var liste_perso =document.getElementById('liste_de_perso');
  liste_perso.appendChild(li_personnage)
};





/*rien à voir avec le cours*/

bouton = document.getElementById('bouton');

document.addEventListener('keydown', function(event) {

  if (event.key === " ")
    console.log("Bonjour !");
  

});

