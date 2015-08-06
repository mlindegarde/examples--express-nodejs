/*
 * In order to use gulp on your own machine, you will need to install it globally:
 * npm install gulp -g
 *
 * package.json will not install global packages for you
 *
 * You will also need Ruby/Sass installed on your machine to use the gulp-ruby-sass package.
 */

var gulp = require('gulp');
var compass = require('gulp-compass');


// The default task 'gulp'
gulp.task('default', ['watch'], function() {});

// The task that default runs 'gulp watch'
gulp.task('watch', function() {
  gulp.watch('public/sass/**/*', ['sass']);
});

// The task that watch runs on changes 'gulp sass'
gulp.task('sass', function() {
  gulp.src('/public/sass/**/*')
      .pipe(compass({
        config_file: 'config.rb',
        css: 'css',
        sass: 'sass'
      }))
      .pipe(gulp.dest('app/assets/temp'))
});