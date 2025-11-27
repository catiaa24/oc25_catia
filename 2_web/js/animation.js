console.log("oui")
const anime = document.getElementById("animation"); // récuperer l'élément dessin
const ctx_anime = anime.getContext("2d");


const canvasSizeX = 500;
const canvasSizeY = 500;
const dx = 1;
const dy = 1;
var x = 1;
var y = 1;

const tn = new Image();
//const tn = ctx_anime.arc(250, 150, 50, 0, 2*Math.PI);

function animation () {
    tn.src= "/2_web/images/genetic-data-svgrepo-com.svg";
    
    window.requestAnimationFrame(draw);
    
}

function draw() { //va dessiner canvas mais un peu décaler - appeler constatment
    ctx_anime.clearRect(0,0,500,500);

    if (x>canvasSizeX) {
        ctx_anime.translate(-canvasSizeX,-canvasSizeY);
        x=1;
        y=1;
    } else {
        ctx_anime.drawImage(tn, 0, 0, 50, 50);
        ctx_anime.translate(1,1); //c'est tout le canvas qui est décaler et pas l'atome
        x = x + dx;
        y = y + dy;
    }
    
        window.requestAnimationFrame(draw);
}


animation();