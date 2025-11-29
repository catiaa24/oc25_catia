console.log("oui")
const anime = document.getElementById("animation"); // récuperer l'élément dessin
const ctx_anime = anime.getContext("2d");


const Xsize = 500/2;
const Ysize = 400/2;

let isPaused = false; // état de pause
//cercle qui tourne
let angle = 0;
let radius = 150;
const speed = 0.15;
const shrink = 0.5;

//cercle qui grandit
let radius2 = 10;       // rayon initial
const maxRadius = 30; // limite du rayon
const growSpeed = 1;   // vitesse d’agrandissement


function resetVars() { //fonction pour remmettre variable initiales
  angle = 0;
  radius = 150;
  radius2 = 10;
}


function init(){ //focntion initiale qui permet d'initier l'animation
    if (isPaused) return; // si en pause, on arrête ici
    
    //effacer le canvas
    ctx_anime.clearRect(0,0, 500, 400);


    //calculer la position du cercle1
    const x1 = Xsize + radius * Math.cos(angle);
    const y1 = Ysize + radius * Math.sin(angle);
    //dessiner le cercle1
    ctx_anime.beginPath();
    ctx_anime.strokeStyle ="rgba(255, 72, 0, 1)";
    ctx_anime.arc(x1,y1,10,0, 2*Math.PI);
    ctx_anime.lineWidth = 2;
    ctx_anime.fill();
    ctx_anime.stroke();

    //calculer la position du cercle2
    const x2 = Xsize + radius * Math.cos(angle+Math.PI);
    const y2 = Ysize + radius * Math.sin(angle+Math.PI);
    //dessiner le cercle2
    ctx_anime.beginPath();
    ctx_anime.strokeStyle ="rgba(255, 72, 0, 1)";
    ctx_anime.arc(x2,y2,10,0, 2*Math.PI);
    ctx_anime.lineWidth = 2;
    ctx_anime.fill();
    ctx_anime.stroke();
    


    //mettre à jour angle et rayon
    angle += speed;
    radius-=shrink;

    //continuer l'animation tant que le rayon est positif
    if (radius > 0) {
        
        requestAnimationFrame(init); // Boucle d’animation
    } else {
        ctx_anime.clearRect(0, 0, 500, 400); // effacer le canvas
        ctx_anime.beginPath();
        ctx_anime.strokeStyle ="rgba(255, 72, 0, 1)";
        ctx_anime.arc(Xsize,Ysize,radius2,0, 2*Math.PI);
        ctx_anime.lineWidth = 2;
        ctx_anime.fill();
        ctx_anime.stroke();
        if (radius2 < maxRadius) {
            radius2 += growSpeed;
            requestAnimationFrame(init);
        }
    }
    
 
}

document.addEventListener("click", function() {
    if (maxRadius == radius2) {
        resetVars(); //remmettre les valeurs initiales
        init();
    } if (isPaused === true) { //comparaison stricte
        isPaused = false;
        requestAnimationFrame(init);
    } else if (maxRadius > radius2) {
        isPaused = true; // mettre en pause

    } 

});




init();







