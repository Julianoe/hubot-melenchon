# Description:
#   Hubot, be polite and support Mélenchon.
#
# Dependencies:
#   None
#
# Configuration:
#   None
#
# Commands:
#   "Mélenchon" makes hubot say "Can't stenchon the Mélenchon!"
#   "Mémel vaincra" makes hubot greet you back
cantstench = [
    "Yeah, %, can't stenchon the Mélenchon!! :cantstench:",
    "Mélenchon!! HUSS, HUSS, HUSS, HUSS, HUUUUUUSSSSSS!!!!",
    ":cantstench2: Can't stenchon the Mélenchon!!",
    "Mémel vaincra",
    "Que Mémel te garde, %"
]
victory = [
    ":LeftLike:",
    "L'esprit des vrais camarades t'habite, %",
    "Et le peuple avec lui :poinglevé:",
    "Mémel veille sur toi, %"
]
module.exports = (robot) ->

    # When the robot hears the name of Mélenchon
    robot.hear /(Mélenchon)/i, (msg) ->
        # variable melenchon is attributed a random cantstench string
        melenchon = msg.random cantstench
        # bot sends message in melenchon variable, replacing % by user name
        msg.send melenchon.replace "%", msg.message.user.name
    # when the robot hears Mémel vaincra
    robot.hear /(Mémel vaincra)/i, (msg) ->
        # variable melenchon is attributed a random victory string
        melenchon = msg.random victory
        # bot sends message in melenchon variable, replacing % by user name
        msg.send melenchon.replace "%", msg.message.user.name
