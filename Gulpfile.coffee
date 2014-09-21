gulp = require "gulp"
coffee = require "gulp-coffee"
jade = require "gulp-jade"
wrap = require "gulp-wrap-amd"
rjs = require "gulp-requirejs"

gulp.task "coffee", ->
  gulp
  .src "coffeescripts/**"
  .pipe coffee bare: true
  .pipe gulp.dest "js/lib"

gulp.task "jade", ->
  gulp
  .src "templates/**/*.jade"
  .pipe jade client: true
  .pipe wrap deps: []
  .pipe gulp.dest "js/lib/templates"

gulp.task "rjs", ->
  rjs
    mainConfigFile: "js/lib/config.js"
    baseUrl: "js/lib"
    name: "production"
    out: "app.js"
    paths:
      requireLib: "../../bower_components/requirejs/require"
    include: ["requireLib"]

  .pipe gulp.dest "js/lib/"

gulp.task "default", ->
  console.log "default"
