expect = require('chai').expect

Robot       = require('hubot/src/robot')  
TextMessage = require('hubot/src/message').TextMessage

describe 'tgs ', ->
  robot = null
  user = null
  adapter = null

  beforeEach (done) ->
    robot = new Robot(null, 'mock-adapter', false, 'hubot')

    robot.adapter.on 'connected', ->
      require('../scripts/tgs_youtube')(robot)
      user = robot.brain.userForId '1',
        name: 'mocha'
        room: '#mocha'
      adapter = robot.adapter
      done()
    robot.run()

  afterEach -> robot.shutdown()

  it '動画 responds "URL"', (done) ->
    adapter.on 'send', (envelope, strings) ->
      expect(strings[0]).to.match(/^https\:\/\//)
      done()

    adapter.receive(new TextMessage(user, 'hubot tgs 動画'))

  it 'オススメ responds "URL"', (done) ->
    adapter.on 'send', (envelope, strings) ->
      expect(strings[0]).to.match(/^https\:\/\//)
      done()

    adapter.receive(new TextMessage(user, 'hubot tgs オススメ'))

  it 'おすすめ responds "URL"', (done) ->
    adapter.on 'send', (envelope, strings) ->
      expect(strings[0]).to.match(/^https\:\/\//)
      done()

    adapter.receive(new TextMessage(user, 'hubot tgs おすすめ'))
