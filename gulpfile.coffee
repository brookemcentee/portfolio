fs = require 'fs'
path = require 'path'

gulp = require 'gulp'
coffee = require 'gulp-coffee'
less = require 'gulp-less'
babel = require 'gulp-babel'
nodemon = require 'gulp-nodemon'
webpack = require 'webpack-stream'

swallowError = (error) ->
  console.log error
  @emit 'end'
  return

gulp.task 'webpack', (cb) ->

  webpackOpts =
    module:
      rules: [
        test: /\.coffee$/
        use: [
          loader: 'coffee-loader'
          options:
            transpile:
              plugins: ['transform-react-jsx']
        ]
    ]
    entry:
      main: './views/js/main.coffee'
    output:
      filename: '[name].js'
    resolve:
      extensions: ['.js', '.jsx', '.coffee']
    watch: true
    bail: false

  gulp.src './views/js/**/*.coffee'
    .pipe webpack webpackOpts
    .on 'error', swallowError
    .pipe gulp.dest './static/js'
  return

gulp.task 'less', ->
  gulp.src './views/css/main.less'
    .pipe less()
    .pipe gulp.dest './static/css'
  return

gulp.task 'dev', ['webpack', 'less', 'start_server', 'watch_assets']

gulp.task 'start_server', ->
  nodemon
    script: './index.coffee'
    ext: 'coffee pug'
    watch: [path.join(__dirname, 'views/templates/')]
  return

gulp.task 'watch_assets', ->
  gulp.watch ['./views/css/**/*.less'], ['less']
  return