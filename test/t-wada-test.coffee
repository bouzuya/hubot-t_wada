chai = require 'chai'
sinon = require 'sinon'
chai.use require 'sinon-chai'

expect = chai.expect

describe 't-wada', ->
  beforeEach ->
    @robot =
      respond: sinon.spy()
    @msg =
      send: sinon.spy()

    require('../src/t-wada')(@robot)
    @robot.respond.firstCall.args[1](@msg)

  it 'registers a respond listener', ->
    expect(@robot.respond).to.have.been.calledWith(/テスト書いてない/)

  it 'sends a message', ->
    expect(@msg.send).to.have.been.calledWith(
      'テスト書いてないとかお前それ @t_wada の前でも同じこと言えんの？')
