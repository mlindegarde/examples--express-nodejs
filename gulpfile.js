/*
 * In order to use gulp on your own machine, you will need to install it globally:
 * npm install gulp -g
 *
 * package.json will not install global packages for you
 *
 * You will also need Ruby/Sass installed on your machine to use the gulp-ruby-sass package.
 */

var gulp = require('gulp');
var sass = require('gulp-ruby-sass');

// The default task 'gulp'
gulp.task('default', ['watch'], function() {});

// The task that default runs 'gulp watch'
gulp.task('watch', function() {
  gulp.watch('public/sass/*.scss', ['sass']);
});

// The task that watch runs on changes 'gulp sass'
gulp.task('sass', function() {
  return sass('public/sass/')
    .pipe(gulp.dest('public/css'));
});