//On appele le module FS
const filestream = require('fs');
//Ensuite on cree un nouveau fichier texte contenant du HelloWorld. On catch l'erreur si il y en a, sinon on affiche que le fichier a été sauvé
filestream.writeFile('sample1.txt', "Hello Wolrd", function(err){
    if (err) console.log(err); 
    else console.log("File Saved");
});