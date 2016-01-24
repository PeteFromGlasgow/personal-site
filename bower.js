var fs = require('fs');
var glob = require('glob');

/**
 * Bower plugin for metalsmith
 *
 * It includes files from bower as part of the chain.
 */



var bowerImport = function (options) {


    return function (files, metalsmith, done) {

    	var includeCss = (options.includeCss !== undefined) ? options.includeCss : true;
    	var includeJs = (options.includeJs !== undefined) ? options.includeJs : true;
    	var includeScss = (options.includeScss !== undefined) ? options.includeScss : true;
    	var destination = (options.destination !== undefined) ? options.destination : "public"

        var bowerComponents = glob.sync("./bower_components/**/bower.json");

        var checkFile = function(file, context) {
        	var modPath = context.substring(0, context.lastIndexOf("/"));

        	var outpath = (file.lastIndexOf("/") == -1) ? destination+"/"+file : destination+"/"+file.substring(file.lastIndexOf("/")+1);
	        if ((file.lastIndexOf(".css") == file.length - 4) && includeCss){
	        	files[outpath] = {
	        		contents: fs.readFileSync(modPath+"/"+file)
	        	}
	        }
	        if ((file.lastIndexOf(".js") == file.length - 3) && includeJs){

	        	files[outpath] = {
	        		contents: fs.readFileSync(modPath+"/"+file)
	        	}
	        }
	        if ((file.lastIndexOf(".scss") == file.length - 5) && includeScss){
	        	files[outpath] = {
	        		contents: fs.readFileSync(modPath+"/"+file)
	        	}
	        }
        }

        for (var i = 0; i < bowerComponents.length; i++) {
        		var bowerInfo = JSON.parse(fs.readFileSync(bowerComponents[i]));
        		if (bowerInfo.main.constructor === Array){
        			for (var j = 0; j < bowerInfo.main.length; j++) {
	        			var file = bowerInfo.main[j]
	        			checkFile(file, bowerComponents[i]);
        			};
        		} else {
        			checkFile(bowerInfo.main, bowerComponents[i]);
        		}
        		

        };
        console.log(files);
        done();      
    };
};

module.exports = bowerImport;