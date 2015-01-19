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
  robot.hear /lgtm/i, (msg) ->
    msg.send "lgtm"
