# Description:
#   MCハマーのMVのURLを返す
#
# Commands:
#   hubot (ハマタイ|ケンタスティス|でーでで) 
#
# Author:
#   Hubot, Hondam

_ = require('lodash');

movies = [
  "https://www.youtube.com/watch?v=otCpCn0l4Wo"
]

module.exports = (robot) ->

  # 発言に反応
  robot.hear /(ハマタイ|ケンタスティス|でーでで)/i, (msg) ->
    msg.send _.shuffle(movies)[0]
