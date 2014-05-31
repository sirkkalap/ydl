server.litcoffee
================

This is the main server module. Here are all the url mappings and http-server details.

    express = require "express"

This is an express application

    app = express()

The `/ping` page tells the application name and version.

    app.get '/ping', (req, res) ->
        res.send 'Ydl 0.1.0' # TODO: Get the details from package.json

    app.listen 3000
    console.log 'Listening 0.0.0.0:3000'
