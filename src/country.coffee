# Description
#   Returns country data, ISO info and states/provinces within them. Using countryjs.
#
# Configuration:
#   none
#
# Commands:
#   hubot country name - Returns name for a specified country
#   hubot country area - Returns area (km²) for a specified country
#   hubot country capital - Returns capital city for a specified country
#   hubot country demonym - Returns the demonyms for a specified country
#   hubot country population - Returns approximate population for a specified country
#   hubot country region - Returns general region for a specified country
#   hubot country subregion - Returns a more specific region for a specified country
#   hubot country wiki - Returns link to wikipedia page for a specified country
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
