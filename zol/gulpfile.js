
const gulp = require('gulp');
const html = require('gulp-minify-html');
const css = require('gulp-minify-css');
const gulpsass = require('gulp-sass');
// const concat = require('gulp-concat'); //合并
// const uglify = require('gulp-uglify'); //压缩
// const rename = require('gulp-rename'); //重命名
// const watch = require('gulp-watch'); //添加此插件进行监听



gulp.task('default', function() {
  // 将你的默认的任务代码放在这
});


// gulp.task('uncss',function(){
// 	return gulp.src('src/css/*.css')
// 	.pipe(css())//执行压缩
// 	.pipe(gulp.dest('dist/css/'));
// });


gulp.task('runsass', function() {
    return gulp.src('src/scss/register/*.scss')
        .pipe(gulpsass({
            outputStyle: 'compressed'
        })) //执行编译,compressed:压缩一行
        .pipe(gulp.dest('dist/css/'));
});