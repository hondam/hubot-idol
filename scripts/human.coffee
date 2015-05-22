# Description:
#   山邊に人間味を
#
# Notes:
#   ネタ/ジョーク系はココに記述する
#
# Author:
#   Hubot, Hondam

tsundere = [
  "べっ、別に、これアンタのためにやったわけじゃなんだから！勘違いしないでよね！",
  "You're welcome.",
  "It's my pleasure.",
  "てっ、照れてないもんっ！"
]

sasuga = [
  "これくらい余裕です"
]

module.exports = (robot) ->
  robot.hear /ありがとうやまべ$/i, (msg) ->
    msg.send msg.random tsundere

  robot.hear /さすがやまべ$/i, (msg) ->
    msg.send msg.random sasuga
