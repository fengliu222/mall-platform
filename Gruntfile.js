/**
 * TODO:
 * ** JS压缩
 * ** LESS编译
 * ** Livereload
 * ** freemarker编译
 * ** Css自动前缀
 * ** Css sprites合并
 * ** 批量图片压缩
 */
'use strict';

module.exports = function(grunt) {
	require('load-grunt-tasks')(grunt);

	grunt.initConfig({
		pkg: grunt.file.readJSON('package.json'),

		// 编译less
		less:{
			build: {
				files: [{
					expand: true,
					cwd: './assets/less',
					src: ['**/*.less'],
					dest: './assets/css',
					ext: '.css'
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
				tasks: ['less:build']
			},
			html: {
				files: ['./WEB-INF/view/{,*/}*.ftl'],
				tasks: ['freemarker:test']
			},
			livereload: {
				options: {
					livereload: 35729 // this port must be same with the connect livereload port
				},
				files: [
					'./view-tmp/*.html',
					'./assets/css/{,*/}*.css',
					'./assets/js/{,*/}*.js',
					'./mocks/(,*/}*.js',
					'./Gruntfile.js',
					'./assets/img/{,*/}*.{png,jpg,jpeg,gif,webp,svg}'
				]
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
		return grunt.task.run(["freemarker:test","connect:server","watch"]);
	})

	grunt.registerTask('lss',["less:build"])
}