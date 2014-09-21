gulp = require "gulp"
coffee = require "gulp-coffee"

gulp.task "coffee", ->
  gulp
  .src "coffeescripts/**"
  .pipe coffee bare: true
  .pipe gulp.dest "js/lib"

gulp.task "default", ->
  console.log "default"
