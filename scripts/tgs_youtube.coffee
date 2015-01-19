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

youtube_randam_movies = [
  "https://www.youtube.com/watch?v=elCYCl98Dro"
]

module.exports = (robot) ->

  # 発言に反応
  robot.respond /tgs オススメ/i, (msg) ->
    msg.send youtube_randam_movies[Math.floor(Math.random() * youtube_randam_movies.length)] 
