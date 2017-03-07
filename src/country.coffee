# Description
#   Returns country data, ISO info and states/provinces within them. Using countryjs.
#
# Configuration:
#   none
#
# Commands:
#   hubot hello - <what the respond trigger does>
#   orly - <what the hear trigger does>
#
# Author:
#   hashashin

country = require('countryjs')

module.exports = (robot) ->

  robot.respond /country name (.*)/i, (msg) ->
    msg.send country.name(msg.match[1])

  robot.respond /country area (.*)/i, (msg) ->
    msg.send country.area(msg.match[1])

  robot.respond /country capital (.*)/i, (msg) ->
    msg.send country.capital(msg.match[1])

  robot.respond /country demonym (.*)/i, (msg) ->
    msg.send country.demonym(msg.match[1])

  robot.respond /country population (.*)/i, (msg) ->
    msg.send country.population(msg.match[1])

  robot.respond /country region (.*)/i, (msg) ->
    msg.send country.region(msg.match[1])

  robot.respond /country subregion (.*)/i, (msg) ->
    msg.send country.subregion(msg.match[1])

  robot.respond /country wiki (.*)/i, (msg) ->
    msg.send country.wiki(msg.match[1])
