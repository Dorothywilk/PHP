var gulp = require('gulp'),
  phpconnect = require('gulp-connect-php'),
  sass = require('gulp-sass'),
  browserSync = require('browser-sync');

gulp.task('php-live', function () {
  phpconnect.server({}, function () {
    browserSync({
      proxy: '127.0.0.1:8000'
    });
  });

});

gulp.task('sass', function () {
  return gulp.src('./sass/style.scss')
    .pipe(sass.sync().on('error', sass.logError))
    .pipe(sass())
    .pipe(gulp.dest('./css'))
    .pipe(browserSync.reload({
      stream: true
    }))
});

gulp.watch("**/*.php", browserSync.reload);
gulp.watch("*.html", browserSync.reload);
gulp.watch('./sass/**/*.scss', ['sass'])

gulp.task('default', ['php-live']);
