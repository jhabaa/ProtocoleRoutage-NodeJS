var fs = require('fs');
var http = require('http');
const { chdir } = require('process');
var path = require('path');

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

//=============================================================================================================================
//Pour la protection contre les attaques DDos, nous pouvons commencer par compter le nombre de fois que la fonction est lancée
//=============================================================================================================================
/*var newClient = function(req, res){
    visits++;
    console.log('We have : '+ visits + ' Visits');
}
setTimeout(checkConnectionsNumbers, 1000);*/

//=======================================================================================================================
//Application qui analyse la requête du client et affiche dans la console la methode, le user-agent l'url et le path seul
//=======================================================================================================================
/*var url = require('url');
var newClient = function(req, res){
    console.log(req.method);
    console.log(req.headers["user-agent"]);
    console.log(req.url);
    console.log(url.parse(req.url).pathname);
}*/

//==========================================================================================
//Application qui renvoit une page HTML différente en fonction des paramètres dans le header
//==========================================================================================
var url = require('url');
const { fail } = require('assert');
/*var newClient = function(req, res){
    htmlPage = '<HTML><body>';
    htmlPage = htmlPage + 'Votre ordinateur est '+ url.parse(req.url).pathname + '</body></HTML>';
    res.end(htmlPage);
}*/

//===================================================================================================================
/*Application HTML qui donne un paramètre town et renvoie une page HTML avec le code postal de la ville demandée.*/
//===================================================================================================================
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

/*============================================================================================
Application qui sauvegarde une valeur passée en paramètre dans un JSON
==============================================================================================
*/
var SaveToJson = function(req, res){
    //On prend le dernier score du joueur
    var score = url.parse(req.url, true).query.highscore + '';
    //On ecrit le résultat dans le nouveau fichier
   /* var JsonSave = {
        "scores":[
                {"score":score}
        ]
    };
    //On sauvegarde le fichier
    scoreSaved = JSON.stringify(JsonSave);
    //Et on enregistre sur le disque
    fs.writeFileSync('./MyResults/scores.json', scoreSaved)*/
    
    // Si le fichier existe déjà...
    var data = fs.readFileSync('./MyResults/scores.json');
    const newFile = JSON.parse(data);
    newFile.score = score
    data = JSON.stringify(newFile);
    fs.writeFileSync('./MyResults/scores.json', data)
}
//============================================================================================
// Servie Web qui renvoie une reponse JSON qui donne le code postal d'une ville
// spécifiée en paramètre de la requête.
//============================================================================================
var SendJSONToHTTP = function(request, response){
    var town = url.parse(request.url, true).query.town;
    //En fonction de la ville, on récupère le code postal, qu'on met en JSON
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
    //Creation du JSON
    var adress = {"town":town , "adress": postalCode};
    var JSONToSend = JSON.stringify(adress);

    //Renvoi du JSON
    response.writeHead(200, {'content-type': 'application/json'});
    response.end(JSONToSend)
}

/** 
==================================================================================================
    Exercice Complémentaire
    On renvoie l'heure et la date dans un certain format, un mot de passe, 
    un mot traduit d'une langue vers une autre, une conversion de monnaie
==============================================================================================
 */

/**
 * ==============================================================================================
 * Client HTTP vers google
 * ==============================================================================================
 */

var toGoogle = function(req, res){
    //On peut lancer avec localhost:8080/state, ou n'importe
    var request ={
        "host": "www.google.com",
        "port": 80,
        "path": "/index.html"
    };
    
    var receiveResponsecallBack = function(response){
        var str = '';
        //Un chunk arrive... on l'ajoute au string
        response.on('data',(chunk) => {
            str += chunk
        });
        // Une fois la reponse complete acquise
        response.on('end', (chunk) => {
            //console.log(str); // Code HTML... Je crois qu'il y a du chunk avec
            //console.log(str.toString('utf8')); //Idem ... c'est du HTML
        });

    }
    
    //Pour démarrer un serveur HTTP
    var server = http.get(request, receiveResponsecallBack);
    server.on('error', function(e){
        console.log('error' + e.message);
    });
}

/**
 * ================================================================================================
 * Utilisation des API
 * ================================================================================================
 */
global.globalText = "Encore";

var trainAPI = function(req, res){
    global.final = "";
    var request ={
        "host": "api2.binance.com",
        "port": 80,
        "path": "/liveboard/?id=BE.NMBS.008812005&lang=fr&format=json"
    };
    this.receiveResponsecallBack = function(response){
        var str = '';
        //Un chunk arrive... on l'ajoute au string
        response.on('data',(chunk) => {
            str += chunk
        });
        // Une fois la reponse complete acquise
        response.on('end', (chunk) => {
            //console.log(str); // Code HTML... Je crois qu'il y a du chunk avec
            //console.log(str.toString('utf8')); //Idem ... c'est du HTML

            //On a un string, on le tranforme en JSON. Le Json nous permet de dire qu'il s'agit de la liste des trains en depart de GN
            var jsonAPI = JSON.parse(str);
            //console.log(jsonAPI);
            //Affichons l'horaire du premier départ
            //console.log(jsonAPI["departures"]["departure"][0]["time"])
            //res.on(jsonAPI["departures"]["departure"][0]["time"])
            //final = JSON.stringify(jsonAPI["departures"]["departure"][0]["time"]);
            //console.log(final);
            // On enregistre le la valeur à recupérer dans un fichier. C'est mieux que les variables globales
            fs.writeFile('./public/test.txt', jsonAPI, { flag: 'a+' }, err => {})
        }); 
        return str;
    }
    //Pour démarrer un serveur HTTP
    var server = http.get(request, receiveResponsecallBack);
    server.on('error', function(e){
        console.log('error' + e.message);
    });
}

/**
 * ====================================================================================
 * Application WEB
 * ====================================================================================
 * 
 */

var APIRequestWeb = function(req, res){
    //On commence par renvoyer la page d'accueuil
    res.writeHead(200, {'content-type': 'text/html'})
        // Chargement de la page d'acceuil
    if(req.url === '/'){
        fs.readFile("./public/index.html", "UTF-8", function(err, html){
            res.writeHead(200, {"Content-Type": "text/html"});
            res.end(html)
        });
        // Chargement du CSS
    } else if(req.url.match("\.css$")){
        var cssPath = path.join(__dirname, 'public', req.url);
        var fileStream = fs.createReadStream(cssPath, "UTF-8");
        res.writeHead(200, {"Content-Type": "text/css"});
        fileStream.pipe(res);
    }
    if(req.url == '/state?'){
        console.log("Game Over");
        trainAPI();
        // On l'écrit dans le HTML

        const readHTML = fs.createReadStream('./public/index.html');
        var writeHTML = fs.createWriteStream('./public/render.html');
        readHTML.setEncoding('utf8');
        readHTML.on('data', function(chunk){
        var text = ""+chunk;
        // On lit le fichier où nous avons stocké le code
        var file = fs.readFileSync('./public/test.txt')
        var texte = ""+file;
        text = text.replace('#Response', file); //Il faut aussi remplacer la balise fermante. dans ce cas.
        console.log(texte);
        writeHTML.write(text);
        res.end(text)
        });

    }
}




//Creation d'un serveur
//var server = http.createServer();//Instantcier le serveur. En cas de connexion, newClient est lancé
//server.listen(8080);//Preciser le port d'écoute
/**
 * ====================================================================
 * Serveur de fichiers HTTP
 ======================================================================
 */


 /**
  * ======================================================================
  * PROXY
  * ======================================================================
  */
 var ProxyWeb = function(req, res){
     // On récupère les paramètres
     var head = req.headers['host'];
     var method = req.method;
     var urlHost = req.url;
     var headers = req.headers;
     //on cree un nouvel objet
     var options = {
         hostname: req.headers['host'], port:80, path:url.parse(req.url).pathname, method: req.method, headers:req.headers
     } 
     

     //On charge la page
     //On commence par renvoyer la page d'accueuil
    res.writeHead(200, {'content-type': 'text/html'})
    // Chargement de la page d'acceuil
    if(req.url === '/'){
    fs.readFile("./public/index.html", "UTF-8", function(err, html){
        res.writeHead(200, {"Content-Type": "text/html"});
        //On donne les paramètres en log
        console.log(head, method, urlHost, headers)
        proxyRequest()
        res.end(html)
    });
    // Chargement du CSS
    }   
    else if(req.url.match("\.css$")){
    var cssPath = path.join(__dirname, 'public', req.url);
    var fileStream = fs.createReadStream(cssPath, "UTF-8");
    res.writeHead(200, {"Content-Type": "text/css"});
    fileStream.pipe(res);
        }
 // On lance la requete avec les options définies plus haut
    var proxyRequest = http.request(options, function(serverResponse){
        console.log('STATUS:' + serverResponse.statusCode);
        console.log('HEADERS:' + serverResponse.headers);
        serverResponse.on('data', (chunk)=>{
            console.log('CHUNK:' + chunk)
            //On renvoie les données de au client à chaque fois
            res.write(chunk, 'binary')
            //Et on envoie l'en-tête
            res.writeHTML(serverResponse.statusCode, serverResponse.headers);
             //Une fois la transmission terminée on le dit au client
             res.end("End");
        });
    });

}



/**
 * ===============================================================================
 * EXPRESS
 ==========================================================================*/
var express = require('express');
const { get } = require('express/lib/response');
var app = express();

app.use('/', express.static("/Users/jean-hubert/Documents/GitHub/ProtocoleRoutage-NodeJS/public"));
//Pour renvoyer l'heure
app.get('/hour', function(req, res){
    let timeOfDay = new Date()
    var hour  = {
        "hour": timeOfDay.getHours(),
        "minutes": timeOfDay.getMinutes(),
        "Seconds": timeOfDay.getSeconds()
    }
    res.send(hour);
})

app.get('/form', function(req, res){
    let timeOfDay = new Date()
    if (req.query.ville == "Bruxelles"){
        res.send("1000")
    }
})

app.get('/', function(req, res){
    res.sendFile(index.html)
})
app.get('/state', function(req, res){
    res.send('https://api2.binance.com/api/v3/ticker/24hr');
})
/**
 * SERVEUR EXPRESSS====================================================
 */
//app.listen(3000, function(){
//    console.log('Ecoute sur le port 3000');
//})

/**
 * ============================ Serveur ===============================
 */
var globalServer = http.createServer(APIRequestWeb)
globalServer.listen(8080);
console.log('Serveur démarré...');
/**===================================================================== */