console.log("Bonjour")

const statut = document.getElementById("statut"); // c'est une variable qui change pas : const
const ctx_statut = statut.getContext("2d"); // pour dessiner en 2d
console.log(ctx_statut)

ctx_statut.fillStyle = ("green");
ctx_statut.fillRect(0, 0, 300, 300); // dessine rect, au point 0,0 et 100 largeur et 100 hauteur

const dessin = document.getElementById("dessin"); // récuperer l'élément dessin
const context = dessin.getContext("2d");

context.fillStyle = "red";
context.fillRect (25, 25,100,100); 
context.fillRect (250, 100,100,100); 
context.fillRect (25, 25,100,100);

context.fillStyle = "blue";
context.fillRect (200,200,100,100);



for (var i = 0 ; i < 10 ; i++) {
    for (var j = 0; j < 10 ; j++) {
        if ((i+j) % 2 == 0) {
            context.fillStyle = "white";
        } else {
            context.fillStyle = "black";

        }

        
        context.fillRect (i*50,j*50,50,50);
        
    }
     
};
