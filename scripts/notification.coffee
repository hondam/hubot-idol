# Description:
#   テストの結果に反応する
#
# Author:
#   Hubot, Hondam

_ = require('lodash');

failed_comments = [
  'たいへん！テストが落ちたよ！'
  'こらっ！テストが落ちたよ！'
  'テストガ オチマシタ'
  'テストが落ちたみたい。焦らなくていいから確認してね！'
  'テストが落ちたみたい。あきらめたらそこで試合終了だよ'
]
module.exports = (robot) ->
  robot.hear /.*?No\ tests.*?/, (msg) ->
    msg.send "@hondam " + _.shuffle(failed_comments)[0] 
