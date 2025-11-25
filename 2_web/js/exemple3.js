console.log("Bonjour")

const statut = document.getElementById("statut"); // c'est une variable qui change pas : const
const ctx_statut = statut.getContext("2d"); // pour dessiner en 2d
console.log(ctx_statut)

ctx_statut.fillStyle = ("green");
ctx_statut.fillRect(0, 0, 300, 300); // dessine rect, au point 0,0 et 100 largeur et 100 hauteur

const dessin = document.getElementById("dessin"); // récuperer l'élément dessin
const context = dessin.getContext("2d");

// context.fillStyle = "red";
// context.fillRect (25, 25,100,100); 
// context.fillRect (250, 100,100,100); 
// context.fillRect (25, 25,100,100);

// context.fillStyle = "blue";
// context.fillRect (200,200,100,100);



// for (var i = 0 ; i < 10 ; i++) {
//     for (var j = 0; j < 10 ; j++) {
//         if ((i+j) % 2 == 0) {
//             context.fillStyle = "white";
//         } else {
//             context.fillStyle = "black";

//         }

        
//         context.fillRect (i*50,j*50,50,50);
        
//     }
     
// }; => comment tout commenter cmd, maj, 7


//trait en js c'est path
// context.strokeStyle ="white";
context.beginPath(); // on commence un chemin
context.moveTo(250,100); //cordonnée 
context.lineTo(100, 250); //construciton de la ligne (de ou jusqu'à ou) (donnée la postion vers ou on veut aller)
context.lineTo(250, 400);
context.lineTo(400, 250);
context.closePath(); // pour fermer le chemin on peut forcer à ramener au chemin
context.fillStyle = "blue";
context.fill();
context.stroke(); //dessine le trait sinon y a rien


// rond ou arc de cercle
context.beginPath();
context.arc(300, 150, 50, 0, 2*Math.PI); // cordonnées puis rayon et angle de départ et angle de fin en rad
context.fillStyle = "Black";
context.fill();
context.stroke();

context.beginPath();
context.arc(200, 150, 50, 0, 2*Math.PI/2); // cordonnées puis rayon et angle de départ et angle de fin en rad
context.fillStyle = "Black";
context.fill();
context.stroke();

context.beginPath();
context.arc(250, 250, 50, 0, Math.PI); // cordonnées puis rayon et angle de départ et angle de fin en rad
context.fillStyle = "Black";
context.lineWidth = 6;
context.stroke();


// exemple avec chatgpt
const canvas = document.getElementById("c");
const ctx = canvas.getContext("2d");

ctx.strokeStyle = "#00faff";   // couleur de la lumière
ctx.lineWidth = 6;

ctx.shadowColor = "#00faff";   // couleur du halo
ctx.shadowBlur = 20;           // intensité du halo

ctx.beginPath();
ctx.moveTo(50, 150);
ctx.lineTo(550, 150);
ctx.stroke();