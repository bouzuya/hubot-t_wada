# Description
#   A Hubot script to support your testing
#
# Configuration:
#   None
#
# Commands:
#   hubot テスト書いてない - support your testing
#
# Author:
#   bouzuya <m@bouzuya.net>

module.exports = (robot) ->
  robot.respond /テスト書いてない/, (msg) ->
    msg.send 'テスト書いてないとかお前それ @t_wada の前でも同じこと言えんの？'
