/**
 * TODO:
 * ** JS压缩
 * ** LESS编译 √
 * ** Livereload √
 * ** freemarker编译 √
 * ** Css自动前缀 √
 * ** Css sprites合并 √
 * ** 批量图片压缩
 */
'use strict';
var path = require("path");
module.exports = function(grunt) {
	require('load-grunt-tasks')(grunt);

	grunt.initConfig({
		pkg: grunt.file.readJSON('package.json'),

		// 编译less
		less:{
			build: {
				options:{
					cleancss: true
				},
				files: [{
					expand: true,
					cwd: './assets/less',
					src: ['**/*.less','!var.less','!func.less','!reset.less','!core.less','!sprites/*.less'],
					dest: './assets/css',
					ext: '.css',
					cleancss:true
				}]
			}
		},

		// JS压缩
		freemarker: {
			options: {
				views: "WEB-INF/view",
				out: "staticPage"
			},
			test: {
				src: "mocks/*.js"
			}
		},

		watch: {
			styles: {
				files: ['./assets/less/{,*/}*.less'],
				tasks: ['less:build','autoprefixer:build']
			},
			html: {
				files: ['./WEB-INF/view/{,*/}*.ftl'],
				tasks: ['freemarker:test']
			},
			template:{
				files: ['./WEB-INF/view/tpl/**/*.html'],
				tasks: ['tmod'],
				options: {
                    spawn: false
                }
			},
			livereload: {
				options: {
					livereload: 35729 // this port must be same with the connect livereload port
				},
				files: [
					'./staticPage/*.html',
					'./assets/css/{,*/}*.css',
					'./assets/js/{,*/}*.js',
					'./mocks/(,*/}*.js',
					'./Gruntfile.js',
					'./assets/img/{,*/}*.{png,jpg,jpeg,gif,webp,svg}'
				]
			},
	      express: {
	        files: [
	          'server.js',
	          'mockServer/**/*.{js,json,coffee,html}'
	        ],
	        tasks: ['express:dev', 'wait'],
	        options: {
	          livereload: true,
	          nospawn: true //Without this option specified express won't be reloaded
	        }
	      }
		},

		autoprefixer: {
		  build: {
		    expand: true,
		    cwd: './assets/css/',
		    src: [ '**/*.css' ],
		    dest: './assets/css/'
		  }
		},
		sprite:{
			site: {
		        src: ['./assets/img/index/logo.png','./assets/img/index/tip-lt.png','./assets/img/index/tip-rb.png','./assets/img/index/tab-active.png'],
		        destImg: './assets/img/common/site-sprite.png',
		        destCSS: './assets/less/sprites/site-sprite.less',
		        cssFormat: 'less',
		        imgPath:'@{imgPath}/common/site-sprite.png'
		    },
		    index: {
		        src: ['./assets/img/index/logo-*.png'],
		        destImg: './assets/img/index/index-sprite.png',
		        destCSS: './assets/less/sprites/index-sprite.less',
		        imgPath:'@{imgPath}/index/index-sprite.png',
		        cssFormat: 'less'
		    },
		    index_jpg: {
		        src: ['./assets/img/index/game-pic-*.jpg'],
		        destImg: './assets/img/index/index-game-sprite.jpg',
		        destCSS: './assets/less/sprites/index-sprite.less',
		        imgPath:'@{imgPath}/index/index-game-sprite.jpg',
		        cssFormat: 'less'
		    }
		},
		tmod:{
			template:{
				src:'./WEB-INF/view/tpl/**/*.html',
				dest:'./assets/js/template',
				options:{
					base:'./WEB-INF/view/tpl',
					type: "cmd"
				}
			}
		},

		express:{
			options: {
				port: 9000
			},
			dev: {
		        options: {
		          script: 'server.js',
		          debug: true
		        }
		    }
		},
		connect: {
			server: {
				options:{
					port: 9000,
					base:'./',
					hostname: 'localhost',
					livereload: 35729
				}
			}
		}
	})

	grunt.registerTask('default',function(target){
		return grunt.task.run(["freemarker:test","less:build","autoprefixer:build","connect:server","watch"]);
	})

	grunt.registerTask('lss',["less:build"])

	// Used for delaying livereload until after server has restarted
	  grunt.registerTask('wait', function () {
	    grunt.log.ok('Waiting for server reload...');

	    var done = this.async();

	    setTimeout(function () {
	      grunt.log.writeln('Done waiting!');
	      done();
	    }, 500);
	  });

	  grunt.registerTask('express-keepalive', 'Keep grunt running', function() {
	    this.async();
	  });

	grunt.registerTask('serve', function (target) {
  

    grunt.task.run([
      'autoprefixer',
      'express:dev',
      'watch'
    ]);
  });
}
