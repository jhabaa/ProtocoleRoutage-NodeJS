//FS permet d'ouvrir et de lire des fichiers
//readgilestream permet de mettre le contenu en variable
//Ceci nous affiche le buffer du fichier
/*var fs = require('fs');
var file = fs.readFileSync('test.txt');
console.log(file);
//Pour afficher le texte en lui même on fait
console.log(""+file);*/
//readFileSync est synchrone, donc bloquante dans le programme
//La ligne suivante n'est donc exécutée qu'à la fin de la méthode read
//Les methodes asynchrones permettent de ne pas interrompre le prog
//Nous allons utiliser la methode CreateReadStream
//Elle sera appelée à chaque chunk généré (block de données)

/*var readStream = fs.createReadStream('test.txt');
function readData(chunk){console.log(chunk);}
function endData(){console.log("The End")}
readStream.on('data', readData); //Fonction à appeler à la génération de chaque chunk
readStream.on('end', endData); //Fonction à appeler à la fin de la lecture
// Pour l'écriture synchrone dans un fichier, l'opération est similaire
fs.writeFile('test.txt', "Nouvelle donnée dans le fichier",
function (err){
    if (err) console.log("Erreur");
    else console.log("Ecriture effectuée");
}
);*/
//Une fois de plus on préfère la methode asynchrone pour les gros fichiers
//On peut par exemple copier le contenu du fichier vers un 2nd
/*var writeStream = fs.createWriteStream('testCopie.txt');
readStream.setEncoding('utf8');
readStream.on('data', function(chunk){writeStream.write(chunk);})
readStream.on('end', function(){writeStream.end}) //Optionnel pour signaler l'arrêt de l'écriture
//Une autre façon de copier sans se soucier du flux de données
readStream.pipe(writeStream); //C'est le flux lu qui est pipé*/

//Programme qui va lire un fichier HTML dans lequel on va remplacer la balise <B> par <STRONG> pour en faire un nouveau fichier Sample.copy
/*
const readHTML = fs.createReadStream('NodeJSFiles/Sample.html');
var writeHTML = fs.createWriteStream('NodeJSFiles/SampleCopy.html');
readHTML.setEncoding('utf8');
//On copie en cherchant les caractères B qu'on remplace par STRONG... ça marche😅
readHTML.on('data', function(chunk){
    var text = ""+chunk;
    text = text.replace('<B>', '<STRONG>'); //Il faut aussi remplacer la balise fermante. dans ce cas.
    text = text.replace('</B>', '</STRONG>');
    console.log(text);
    writeHTML.write(text);
});*/

// HTTP & Node

//Fonction à lancer au démarrage (EXO 1)
//En cas de connexion d'un client, on l'ecrit en console et on revois le numero de la version http ou d'autres paramètres
var headerToReturn = {'Content-Type' : 'text/html'};
/*var newClient = function(req, res){
    var htmlPage = '<HTML><body>';
    for(var i = 0; i<req.rawHeaders.length; i = i+2){
       htmlPage= htmlPage+ '<li>'+req.rawHeaders[i] +":"+ req.rawHeaders[i+1]+'</li>';
    }
    htmlPage = htmlPage + '</body></HTML>'
    console.log('NEW CLIENT CONNECTED'); 
    res.end(htmlPage); 
    console.log(req.rawHeaders); // RawHeaders est un tableu de string
    res.writeHead(200, headerToReturn);
}*/

//Redirection Load Balancing
/*var client = true;
const targets = ['http://www.isib.be','http://www.google.be'];
var visits=0;
/*var newClient = function(req, res){
    if (client == true){res.writeHead(302, {'Location': targets[0]});client = false;res.end();console.log("Client Connecté"+client);}
    else if (client == false){res.writeHead(302, {'Location': targets[1]});client = true;res.end();console.log("Client Connecté"+ client);}
    //console.log(res.socket.remoteAddress);
    console.log(req.rawHeaders);
}*/

//Pour la protection contre les attaques DDos, nous pouvons commencer par compter le nombre de fois que la fonction est lancée
/*var newClient = function(req, res){
    visits++;
    console.log('We have : '+ visits + ' Visits');
}
setTimeout(checkConnectionsNumbers, 1000);*/

//Application qui analyse la requête du client et affiche dans la console la methode, le user-agent l'url et le path seul
/*var url = require('url');
var newClient = function(req, res){
    console.log(req.method);
    console.log(req.headers["user-agent"]);
    console.log(req.url);
    console.log(url.parse(req.url).pathname);
}*/

//Application qui renvoit une page HTML différente en fonction des paramètres dans le header
var url = require('url');
/*var newClient = function(req, res){
    htmlPage = '<HTML><body>';
    htmlPage = htmlPage + 'Votre ordinateur est '+ url.parse(req.url).pathname + '</body></HTML>';
    res.end(htmlPage);
}*/

//Application HTML qui donne un paramètre town et renvoie une page HTML avec le code postal de la ville demandée.
var newClient = function(req, res){
    var town = url.parse(req.url, true).query.town + '';
    var postalCode = 1;
    if (town=='Ixelles'){
        postalCode = 1050;
    }
    if (town=='Bruxelles'){
        postalCode = 1000;
    }
    if (town == 'Forest'){
        postalCode = 1090;
    }
    var htmlPage = '<HTML><body> Bienvenue à '+town+' (' + postalCode+ ') </body></HTML>';
    res.end(htmlPage);
}


//Pour démarrer un serveur HTTP
var http = require('http');
var server = http.createServer(newClient);//Instantcier le serveur. En cas de connexion, newClient est lancé
server.listen(8080);//Preciser le port d'écoute
console.log('Serveur démarré...');