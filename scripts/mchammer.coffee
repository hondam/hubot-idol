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
  "https://www.youtube.com/watch?v=x8H2-YZUw40"
]

module.exports = (robot) ->

  # 発言に反応
  robot.hear /(ハマタイ|ケンタスティス|でーでで)/i, (msg) ->
    msg.send _.shuffle(movies)[0]
