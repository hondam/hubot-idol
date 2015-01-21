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
  "http://vimeo.com/93625826"
]

module.exports = (robot) ->

  # 発言に反応
  robot.hear /(ハマタイ|ケンタスティス|でーでで)/i, (msg) ->
    msg.send _.shuffle(movies)[0]
