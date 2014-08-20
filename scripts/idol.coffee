# Description:
#   HOGE
#
# Dependencies:
#   HOGE
#
# Configuration:
#   HUBOT_HOGE = <hoge>
#
# Commands:
#   hubot hoge - HOGEと返す
#
# Author:
#   Hubot, Hondam

module.exports = (robot) ->

  # 発言に反応
  robot.hear /hear/i, (msg) ->
    msg.send "hear"

  # 呼ばれて答える
  robot.respond /respond/i, (msg) ->

    # replyは発言者に対して発言します
    msg.reply "respond"
