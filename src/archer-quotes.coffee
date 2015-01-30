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
    "call Kenny Loggins... 'cuz you're in the Danger Zone",
    "Danger Zone!",
    "Paging Dr. Loggins",
    "The zone will be one of danger?"
    "https://www.youtube.com/watch?v=siwpn14IE7E"
  ]
  hadSomething: [
    "hold on! I had something good for this"
  ]

module.exports = (robot) ->
  # TODO read this from an environment variable
  robot.hear /comes|take it slow|swallow|long ride|happy ending|coming out|came|too hard|not hard/, (msg) ->
    msg.send msg.random sayings.phrasing

  robot.hear /danger|loggin|logins|obsess|life insurance/, (msg) ->
    msg.send msg.random sayings.dangerZone

  robot.hear /situation|dealing|stress/, (msg) ->
    msg.send msg.random sayings.hadSomething

  robot.hear /ocelot/, (msg) ->
    msg.send "I've never seen an ocelot!"

  robot.hear /karate/, (msg) ->
    msg.send "Karate? the Dane Cook of martial arts?"

  robot.hear /call girl/, (msg) ->
    msg.send "No Cyril, when they're dead, they're just hookers"

  robot.hear /telephone|phone sex/, (msg) ->
    msg.send "does internet porn know you're cheating on it?"

  robot.hear /ruse/, (msg) ->
    msg.send "a ruse? brrring brrring ... hi, it's the 1930's, can we have our words and clothes and shitty airplane back?"

  robot.hear /temperature|thermostat/, (msg) ->
    msg.send "the thermostats are becoming sentient!"

