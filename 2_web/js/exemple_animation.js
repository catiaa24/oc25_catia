const canvas_image = document.getElementById("image"); // on récupère l'objet qui correspond à la baslise canvas
const ctx_image = canvas_image.getContext("2d");

// const img = new Image(); //création d'un objet image qui est vide pour l'instant
const img_atome = new Image();
// img_atome.onload = function () {  // quand image est chargée
//     //ctx_image.drawImage(img, 0, 0, 500, 500 ); //coordonnée et l'objet iamge que l'on vient de créer
//     //taille de l0image les num qui suivent
//     ctx_image.drawImage(img_atome, 150, 150, 50, 50);
// }




const canvasSizeX = 500;
const canvasSizeY = 500;
const dx = 1;
const dy = 1;
var x = 1;
var y = 1;






function init(){ //focntion initiale qui permet d'initier l'animation
    img_atome.src= "/2_web/images/genetic-data-svgrepo-com.svg";
    window.requestAnimationFrame(draw); // méthode qui permet de créer des naimations sur canvas
    //la fonction du dessu va être appeler constamment et elle va sapeller draw


}


function draw() { //va dessiner canvas mais un peu décaler - appeler constatment
    ctx_image.clearRect(0,0,500,500);

    if (x>canvasSizeX) {
        ctx_image.translate(-canvasSizeX,-canvasSizeY);
        x=1;
        y=1;
    } else {
        ctx_image.drawImage(img_atome, 0, 0, 50, 50);
        ctx_image.translate(1,1); //c'est tout le canvas qui est décaler et pas l'atome
        x = x + dx;
        y = y + dy;
    }
    
        window.requestAnimationFrame(draw);
}

// const anime = () => {
//     ctx_image.globalAlpha="0.1";
//     ctx_image.fillRect(0,0,500,500);

// }
// anime();



init(); //appeler la fonction