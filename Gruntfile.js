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
                views: "views",
                out: "view-mock/views"
            },
            test: {
                src: "mocks/*.js"
            }
		},

		watch: {
			js: {
				files: ['./assets/js/{,*/}*.js']
			},
			styles: {
				files: ['./assets/less/{,*/}*.less'],
        		tasks: ['less:build']
			},
			html: {
				files: ['./views/{,*/}*.ftl'],
        		tasks: ['freemarker:test']
			}
		}
	})

	grunt.registerTask('default',function(target){
		return grunt.task.run(["freemarker:test","watch"]);
	})

	grunt.registerTask('lss',["less:build"])
}