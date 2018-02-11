express = require('express')
path = require('path')

app = express()

app.set('view engine', 'pug')

app.set('views', path.join(__dirname, '/templates'));

app.get('/', function (req, res) {
  res.render('index', { title: 'Hey', message: 'Hello there!' })
})

app.listen(3000, () => console.log('Example app listening on port 3000!'))