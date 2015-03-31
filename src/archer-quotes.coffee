# Description:
#   Say Hi to Hubot.
#
# Dependencies:
#   None
#
# Configuration:
#   None
#
# Commands:
#   hubot hello - "hello!"
#   hubot orly - "yarly"
#
# Author:
#   tombell

sayings =
  phrasing: [
    "are we not saying phrasing anymore?",
    "phrasing?",
    "phrasing!"
  ]
  dangerZone: [
    "call Kenny Loggins... 'cuz you're in the DANGER ZONE!",
    "Danger Zone!",
    "Paging Dr. Loggins",
    "The zone will be one of danger?"
    "https://www.youtube.com/watch?v=siwpn14IE7E"
  ]

module.exports = (robot) ->

  unless process.env.HUBOT_LESS_ARCHER

    # TODO read this from an environment variable
    robot.hear /comes|take it slow|swallow|long ride|happy ending|coming out|came|hard/i, (msg) ->
      msg.send msg.random sayings.phrasing

    robot.hear /danger|loggin|logins|obsess|life insurance/i, (msg) ->
      msg.send msg.random sayings.dangerZone

    robot.hear /ocelot/i, (msg) ->
      msg.send "I've never seen an ocelot!"

    robot.hear /karate/i, (msg) ->
      msg.send "Karate? the Dane Cook of martial arts?"

    robot.hear /call girl/i, (msg) ->
      msg.send "No Cyril, when they're dead, they're just hookers"

    robot.hear /telephone|phone sex/i, (msg) ->
      msg.send "does internet porn know you're cheating on it?"

    robot.hear /ruse/i, (msg) ->
      msg.send "a ruse? brrring brrring ... hi, it's the 1930's, can we have our words and clothes and shitty airplane back?"

    robot.hear /temperature|thermostat/i, (msg) ->
      msg.send "the thermostats are becoming sentient!"

  robot.respond /archer me/i, (msg) ->
    cheerio = require('cheerio')
    robot.http('http://en.wikiquote.org/wiki/Archer_%28TV_series%29').get() (error, result, body) ->
      if error
        msg.send "Encountered an error :( #{error}"
        return
      $ = cheerio.load(body)
      choices = $('dl').map (i, el) ->
        $(this).text()
      msg.send msg.random choices

