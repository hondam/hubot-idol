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
  robot.respond /(はつめ|ハツメ|hatume|hatsume)(\ ([1-9])){0,1}/i, (msg) ->
    area_num = 8
    if msg.match[3]?
      area_num = msg.match[3]

    urls = [
      "",
      "http://wiki.famitsu.com/littlenoah/COOP%E5%8B%9F%E9%9B%86%E6%8E%B2%E7%A4%BA%E6%9D%BF/%E3%82%A8%E3%83%AA%E3%82%A21",
      "http://wiki.famitsu.com/littlenoah/COOP%E5%8B%9F%E9%9B%86%E6%8E%B2%E7%A4%BA%E6%9D%BF/%E3%82%A8%E3%83%AA%E3%82%A22",
      "http://wiki.famitsu.com/littlenoah/COOP%E5%8B%9F%E9%9B%86%E6%8E%B2%E7%A4%BA%E6%9D%BF/%E3%82%A8%E3%83%AA%E3%82%A23",
      "http://wiki.famitsu.com/littlenoah/COOP%E5%8B%9F%E9%9B%86%E6%8E%B2%E7%A4%BA%E6%9D%BF/%E3%82%A8%E3%83%AA%E3%82%A24",
      "http://wiki.famitsu.com/littlenoah/COOP%E5%8B%9F%E9%9B%86%E6%8E%B2%E7%A4%BA%E6%9D%BF/%E3%82%A8%E3%83%AA%E3%82%A25",
      "http://wiki.famitsu.com/littlenoah/COOP%E5%8B%9F%E9%9B%86%E6%8E%B2%E7%A4%BA%E6%9D%BF/%E3%82%A8%E3%83%AA%E3%82%A26",
      "http://wiki.famitsu.com/littlenoah/COOP%E5%8B%9F%E9%9B%86%E6%8E%B2%E7%A4%BA%E6%9D%BF/%E3%82%A8%E3%83%AA%E3%82%A27",
      "http://wiki.famitsu.com/littlenoah/COOP%E5%8B%9F%E9%9B%86%E6%8E%B2%E7%A4%BA%E6%9D%BF/%E3%82%A8%E3%83%AA%E3%82%A28",
      "http://wiki.famitsu.com/littlenoah/COOP%E5%8B%9F%E9%9B%86%E6%8E%B2%E7%A4%BA%E6%9D%BF/%E3%82%A8%E3%83%AA%E3%82%A29"
    ]
    url = urls[area_num]
    request url, (err, res) ->
      $ = cheerio.load res.body
      count = 0
      message = "リトルノア攻略wiki COOP募集掲示板/エリア#{area_num}から直近の3件を表示します。\r\n\r\n"
      $('.comment').each ->
        body = _.trim($(this).children('.comment-body').text().replace(/[\n\r]/g," "))
        date = $(this).children('.comment-header').children('.comment-create-date').text()
        count++
        message += "[" + date + "] " + body
        if count > 2
          return false
        else
          message += "\r\n"
      msg.send message
