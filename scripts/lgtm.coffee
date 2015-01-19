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

lgtm_randam_imgs = [
  "https://files.slack.com/files-pri/T02DE29BF-F03D5V01M/voxdlx2.gif"
]

module.exports = (robot) ->

  # 発言に反応
  robot.hear /lgtm/i, (msg) ->
    msg.send lgtm_randam_imgs[Math.floor(Math.random() * lgtm_randam_imgs.length)] 
