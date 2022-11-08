//Pour ouvrir et lire des fichiers, nous utilisons le package fs
//La méthode ReadFileStream permet de charger dans une variable un fichier
const filestream = require('fs')
var compteur = 0
const readableStream = filestream.createReadStream('/Users/jean-hubert/Documents/GitHub/ProtocoleRoutage-NodeJS/NodeJSFiles/big.txt')
function readData(chunk){
    console.log(chunk)
    compteur = compteur + 1
    console.log(compteur)
}
function endData(){
    console.log("The END")
}

console.log(compteur)
readableStream.on('data', readData)
readableStream.on('end', endData)
