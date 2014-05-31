vows = require 'vows'
zombie = require 'zombie'
assert = require 'assert'
events = require 'events'
promise = require 'promise'

zombie.synchronousChain = (browser, steps)->
  promise = new(events.EventEmitter)
  zombie._linkInTheChain(promise, browser, steps)
  promise

zombie._linkInTheChain = (promise, browser, steps)->
  step = steps.shift()

  if step?
    step(browser)
    browser.wait ()->
      zombie._linkInTheChain(promise, browser, steps)
  else
    promise.emit('success', browser)

suite = vows.describe('Smoke testing http-server verbs')
suite.browser = new zombie(debug: false)

suite.addBatch 'walking the defined verbs':
  topic: ()->
    zombie.synchronousChain @suite.browser, [
      (b)-> b.visit('http://localhost:3000/ping/')
    ]

  '/ping displays Ydl and version': (err, b)->
    assert.equal b.text(), 'Ydl 0.1.0'

suite.export(module)