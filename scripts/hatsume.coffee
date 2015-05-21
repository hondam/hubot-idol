# Description:
#   COOPのルーム番号を返す
#
# Commands:
#   hubot (はつめ|ハツメ|hatume|hatsume)
#
# Author:
#   Hubot, Hondam

cheerio = require 'cheerio'
request = require 'request'
_ = require 'underscore.string'

module.exports = (robot) ->

  # 発言に反応
  robot.respond /(はつめ|ハツメ|hatume|hatsume)/i, (msg) ->
    url = "http://wiki.famitsu.com/littlenoah/COOP%E5%8B%9F%E9%9B%86%E6%8E%B2%E7%A4%BA%E6%9D%BF/%E3%82%A8%E3%83%AA%E3%82%A28"
    request url, (err, res) ->
      $ = cheerio.load res.body
      count = 0
      message = ""
      $('.comment').each ->
        body = _.trim($(this).children('.comment-body').text().replace(/[\n\r]/g," "))
        date = $(this).children('.comment-header').children('.comment-create-date').text()
        count++
        message += date + " " + body
        if count > 2
          return false
        else
          message += "\r\n"
      msg.send message
