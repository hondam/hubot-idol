# Description:
#   Joke commands.
#
# Commands:
# 
# Notes:
#   ネタ/ジョーク系のbot全般

# require
#cheerio = require 'cheerio'
#request = require 'request'
#cronJob = require('cron').CronJob

# init
#xx_randam_imgs = []

module.exports = (robot) ->
  # なん...だと...
  robot.hear /なん\.*だと/i, (msg) ->
    msg.send "http://hubotimg.web.fc2.com/media/joke/img_BLEACH1152.jpg"

  # これからほんとうの地獄だ...
  robot.hear /地獄/i, (msg) ->
    msg.send "http://hubotimg.web.fc2.com/media/joke/0926_jigoku.jpg"
