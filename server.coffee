express = require "express"

app = express()

app.get '/ping', (req, res) ->
    res.send 'Ydl 0.1.0'

app.listen 3000
console.log 'Listening 0.0.0.0:3000'
