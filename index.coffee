express = require 'express'
path = require 'path'

app = express()

app.set 'view engine', 'pug'

app.set 'views', path.join(__dirname, '/views/templates')

app.use express.static 'static'

app.get '/', (req, res) ->
  res.render 'index'
  return

app.get '/projects/*', (req, res) ->
  res.render 'index'
  return

app.get '/about', (req, res) ->
  res.render 'index'
  return

app.listen process.env.PORT or 8080, ->
  console.log "Example app listening on port #{process.env.PORT or 8080}!"
  return