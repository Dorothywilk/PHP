var gulp = require('gulp'),
    browserSync = require('browser-sync'),
    sass = require('gulp-sass'),
    concat = require('gulp-concat'),
    shorthand = require('gulp-shorthand'),
    cleanCss = require('gulp-clean-css'),
    minify = require('gulp-minifier'),
    connectphp = require('gulp-connect-php'),
    imagemin = require('gulp-imagemin');

gulp.task('serve', ['css'], function () {
    connectphp.server({
        // baseDir: '/',
        //index: 'index.php'
    }, function () {
        browserSync({
            proxy: '127.0.0.1:8000'
        });
    });
    gulp.watch('./agc7/sass/**/*.scss', ['css']);
    gulp.watch('./agc7/js/*.js', browserSync.reload);
    gulp.watch('./agc7/**/*.php', browserSync.reload);
    gulp.watch('./agc7/**/*.html', browserSync.reload);
    gulp.watch('./agc7/img/**/*', ['img']);
});

gulp.task('css', function () {
    return gulp.src('./agc7/sass/**/*.scss')

        .pipe(sass.sync().on('error', sass.logError))
        .pipe(sass())
        .pipe(gulp.dest('./agc7/assets/css'))

        .pipe(shorthand())

        .pipe(concat('combined.css'))

        .pipe(cleanCss())

        .pipe(minify({
            minify: true,
            minifyHTML: {
                collapseWhitespace: true,
                conservativeCollapse: true,
            },
            minifyJS: {
                sourceMap: true
            },
            minifyCSS: true,
            getKeptComment: function (content, filePath) {
                var m = content.match(/\/\*![\s\S]*?\*\//img);
                return m && m.join('\n') + '\n' || '';
            }
        }))

        .pipe(gulp.dest('./agc7/assets/css'))

        .pipe(browserSync.reload({
            stream: true
        }))
});

gulp.task('img', function () {
    gulp.src('./agc7/img/**/*')
        .pipe(imagemin({verbose: true}))
        .pipe(gulp.dest('./agc7/assets/img'))
});

gulp.task('default', ['serve', 'img']);
