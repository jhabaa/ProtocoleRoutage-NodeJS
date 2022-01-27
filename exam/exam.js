
var fs = require('fs');
var http = require('follow-redirects').http;
var https = require('https');
const { resolve } = require('path');
var path = require('path');
/**
 * ================================================================================================
 * Utilisation des API
 * ================================================================================================
 */
 global.globalText = "Encore";

 var BinanceAPI = function(req, res){
     global.final = "";
     var request ={
         "host": "api2.binance.com",
         "port": 80,
         "path": "/api/v3/ticker/24hr",
         "method": 'GET'
     };
     
     this.receiveResponsecallBack = function(response){
         var str = '';
         //Un chunk arrive... on l'ajoute au string
         response.on('data',(chunk) => {
             str += chunk
         });
         // Une fois la reponse complete acquise
         response.on('end', (chunk) => {
             //console.log(str)
             //On a un string, on le tranforme en JSON. Le Json nous permet de dire qu'il s'agit de la liste des trains en depart de GN
             var jsonAPI = JSON.parse(str);
             console.log(jsonAPI);

             res.on(jsonAPI["0"])
             final = JSON.stringify(jsonAPI["departures"]["departure"][0]["time"]);
             //console.log(final);
             // On enregistre le la valeur à recupérer dans un fichier. C'est mieux que les variables globales
             fs.writeFile('./public/exam.txt', final, { flag: 'a+' }, err => {})
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
         console.log("API Launch");
         BinanceAPI()
         console.log("ApI exit")
         // On l'écrit dans le HTML
        
         const readHTML = fs.createReadStream('./public/index.html');
         var writeHTML = fs.createWriteStream('./public/render.html');
         readHTML.setEncoding('utf8');
         readHTML.on('data', function(chunk){
         var text = ""+chunk;
         // On lit le fichier où nous avons stocké le code
         var file = fs.readFileSync('./public/exam.txt')
         var texte = ""+file;
         text = text.replace('#Response', file); //Il faut aussi remplacer la balise fermante. dans ce cas.
         console.log(texte);
         writeHTML.write(text);
         res.end(text)
         });
 
     }
 }
 


/**
 * ============================ Serveur ===============================
 */
 var globalServer = http.createServer(APIRequestWeb)
 globalServer.listen(8080);
 console.log('Serveur démarré...');
 /**===================================================================== */