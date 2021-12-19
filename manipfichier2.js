const filestream = require('fs')
const readableStream = filestream.createReadStream('/Users/jean-hubert/Documents/GitHub/ProtocoleRoutage-NodeJS/test.text')
function readData(chunk){
    console.log(chunk)
}
function endData(){
    console.log("The END")
}
readableStream.on('data', readData)
readableStream.on('end', endData)