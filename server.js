'use strict';
// Support coffee-script modules

var express = require('express');
var path = require("path");
var fs = require('fs');
/**
 * Main application file
 */

// Set default node environment to development
process.env.NODE_ENV = process.env.NODE_ENV || 'development';

// Application Config

var app = express();
app.use(express.static(path.join(__dirname, './')));
// Routing
var files = fs.readdirSync("./mockServer");
files.forEach(function(file) {
	console.log(file)
    var filePath =  "./mockServer/" + file;
    var stats = fs.statSync(filePath);

    if (stats.isDirectory()) {
        console.log('\n读取目录：\n', filePath, "\n");
        readDirectory(filePath);
    } else if (stats.isFile()) {
        fs.readFile(filePath,function(err,data){
        	var mock = JSON.parse(data.toString());
        	for(var route in mock){
        		console.log(route);
        		app.get(route,function(req,res){
        			res.json(mock[route])
        		})
        	}
        });
         
    }
});        


app.get("/",function(req,res){
	res.end("Hello")
})

// Start server
app.listen(9000, function () {
  console.log('Express server listening on port %d in %s mode',9000);
});

// Expose app
exports = module.exports = app;