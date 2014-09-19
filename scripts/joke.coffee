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

# なん...だと...
module.exports = (robot) ->
  robot.hear /なん\.*だと/i, (msg) ->
    msg.send "http://hubotimg.web.fc2.com/images/joke/img_BLEACH1152.jpg"
