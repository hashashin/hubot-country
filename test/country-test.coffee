Helper = require 'hubot-test-helper'
sinon = require 'sinon'
chai = require 'chai'

expect = chai.expect

helper = new Helper('../src/country.coffee')

describe 'country', ->
  beforeEach ->
    @room = helper.createRoom()

  afterEach ->
    @room.destroy()

  it 'name', ->
    @room.user.say('alice', '@hubot country name US').then =>
      expect(@room.messages).to.eql [
        ['alice', '@hubot country name US']
        ['hubot', 'United States']
      ]

  it 'area', ->
    @room.user.say('alice', '@hubot country area US').then =>
      expect(@room.messages).to.eql [
        ['alice', '@hubot country area US']
        ['hubot', 9629091]
      ]

  it 'capital', ->
    @room.user.say('alice', '@hubot country capital US').then =>
      expect(@room.messages).to.eql [
        ['alice', '@hubot country capital US']
        ['hubot', 'Washington D.C.']
      ]

  it 'demonym', ->
    @room.user.say('alice', '@hubot country demonym US').then =>
      expect(@room.messages).to.eql [
        ['alice', '@hubot country demonym US']
        ['hubot', 'American']
      ]

  it 'population', ->
    @room.user.say('alice', '@hubot country population US').then =>
      expect(@room.messages).to.eql [
        ['alice', '@hubot country population US']
        ['hubot', 319259000]
      ]

  it 'region', ->
    @room.user.say('alice', '@hubot country region US').then =>
      expect(@room.messages).to.eql [
        ['alice', '@hubot country region US']
        ['hubot', 'Americas']
      ]

  it 'subregion', ->
    @room.user.say('alice', '@hubot country subregion US').then =>
      expect(@room.messages).to.eql [
        ['alice', '@hubot country subregion US']
        ['hubot', 'Northern America']
      ]

  it 'wiki', ->
    @room.user.say('alice', '@hubot country wiki US').then =>
      expect(@room.messages).to.eql [
        ['alice', '@hubot country wiki US']
        ['hubot', 'http://en.wikipedia.org/wiki/united_states_of_america']
      ]
