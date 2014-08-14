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
app.use(express.static(path.join(__dirname, './.tmp')));
// Routing
var files = fs.readdirSync("./mock/ajax");
files.forEach(function(file) {
    var filePath =  "./mock/ajax/" + file;
    var stats = fs.statSync(filePath);

    if (stats.isDirectory()) {
        console.log('\n读取目录：\n', filePath, "\n");
        // readDirectory(filePath);
    } else if (stats.isFile()) {
        fs.readFile(filePath,function(err,data){
        	var mock = JSON.parse(data.toString());

        	for(var _api in mock){

                (function(api){

            		var hash = api.split(" ");
                    var route = "/";
                    var method = "GET";

                    if(hash.length > 1){
                        route = hash[1]
                        method = hash[0].toString().toUpperCase()
                    }else{
                        route = hash[0]
                        app.get(route,function(req,res){
                            res.redirect(mock[api].url);
                        })
                        return;
                    }

                    if(method == "POST"){
                        app.post(route,function(req,res){
                            res.json(mock[api])
                        })
                    }else{
                        app.get(route,function(req,res){
                            res.json(mock[api])
                        })
                    }
                })(_api)
        		
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
