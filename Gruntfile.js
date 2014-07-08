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
			options : {
				paths: ['assets/css'],
			},
			dev: {
				files: {
					'assets/css/core.css':'assets/less/core.less',
					'assets/css/activity/*.css':'assets/less/activity/**/*.less',
					'assets/css/modules/*.css':'assets/less/modules/**/*.less'
				}
			},
			pro: {
				options : {
					cleancss: true
				},
				files: {
					'assets/css/core.css':'assets/less/core.less',
					'assets/css/activity/*.css':'assets/less/activity/**/*.less',
					'assets/css/modules/*.css':'assets/less/modules/**/*.less'
				}
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
		}
	})

	grunt.registerTask('default',function(target){
		return grunt.task.run("freemarker:test");
	})
}