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