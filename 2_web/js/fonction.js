console.log("Bonjour")

const dessin = document.getElementById("dessin"); // récuperer l'élément dessin
const context = dessin.getContext("2d");



//arc de cercle derrière
context.shadowColor = "rgba(255, 145, 0, 1)";
context.shadowBlur = 50;
context.fill();

context.beginPath();
context.strokeStyle ="rgba(255, 72, 0, 1)";
context.lineWidth = 15;
context.ellipse(250, 160, 100, 25, 0, 0, 2*Math.PI, false ); // cordonnées puis rayon et angle de départ et angle de fin en rad
context.fill();
context.stroke();

context.beginPath();
context.strokeStyle = "rgba(255, 115, 0, 1)";
context.lineWidth = 5;
context.ellipse(250, 160, 100, 25, 0, 0, 2*Math.PI, false ); // cordonnées puis rayon et angle de départ et angle de fin en rad
context.stroke();


// trou noir au centre
context.beginPath();
context.strokeStyle ="rgba(255, 72, 0, 1)";
context.lineWidth = 2;
context.arc(250, 150, 50, 0, 2*Math.PI); // cordonnées puis rayon et angle de départ et angle de fin en rad
context.fillStyle = "black";
context.fill();
context.stroke();


context.beginPath();
context.strokeStyle ="rgba(255, 72, 0, 1)";
context.lineWidth = 15;
context.ellipse(250, 160, 100, 25, 0, 0, Math.PI, false ); // cordonnées puis rayon et angle de départ et angle de fin en rad
context.stroke();

context.beginPath();
context.strokeStyle ="rgba(255, 115, 0, 1)";
context.lineWidth = 5;
context.ellipse(250, 160, 100, 25, 0, 0, Math.PI, false ); // cordonnées puis rayon et angle de départ et angle de fin en rad
context.stroke();




context.shadowBlur = 0;
context.font = "18px Arial";
context.fillStyle = "white",
context.fillText("Horizon", 220, 50);

context.font = "18px Arial";
context.fillStyle = "white",
context.fillText("Extérieur", 400, 100);

context.font = "18px Arial";
context.fillStyle = "white",
context.fillText("Intérieur", 30, 100);

context.beginPath();
context.strokeStyle = "white";
context.lineWidth = 2;
context.moveTo(100,100);
context.lineTo(250, 150);
context.stroke();


context.beginPath();
context.strokeStyle = "white";
context.lineWidth = 2;
context.moveTo(250,55);
context.lineTo(250, 100);
context.stroke();