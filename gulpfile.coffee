# gulpfile.coffee
gulp = require 'gulp'
gutil = require 'gulp-util'

gulp.task 'default', ['jade'], ->
    gutil.log 'Default running'

gulp.task 'jade', ->

gulp.task 'test', ->
