# Description:
#   東京女子流のMVのURLを返す
#
# Commands:
#   hubot tgs (オススメ|おすすめ|動画)
#
# Author:
#   Hubot, Hondam

_ = require('lodash');

base_url = "https://www.youtube.com/watch?v="

movies = [
  "G8oOYAAKSlc", # Never ever
  "aQpWT5T5mqg", # Stay with me
  "elCYCl98Dro", # Say long goodbye
  "RQjit4N09js", # ヒマワリと星屑 -English Version-
  "XCzdW-z1ZSU", # Killing Me Softly
  "IhlXlaHH3D4", # Come On Honey! feat. 新井ひとみ (東京女子流)
  "5QjACk4qM6g", # 十字架
  "QEojg0y70LQ", # Partition Love
  "XX4nKKckjLo", # マジ勉NOW! feat.新井ひとみ
  "qrBAEsHpyvY", # ちいさな奇跡
  "Vhbq65WcH3o", # 運命
  "8JnRFB3NPvs", # 約束
  "9JAnvRCp0J0", # Liar
  "X8VX6_mRABs", # Limited addiction
  "tCcEbye6wuU", # 鼓動の秘密
  "fKvVpRbU5Cg", # Love like candy floss
  "yduuHMe1KQ8", # ヒマワリと星屑
  "swPMcWjt_Kg", # おんなじキモチ
  "PoHwMYq08K4", # 頑張って いつだって 信じてる
  "Rl7e_edEtPU"  # キラリ
]

module.exports = (robot) ->

  # 発言に反応
  robot.respond /tgs (オススメ|おすすめ|動画)/i, (msg) ->
    msg.send base_url + _.shuffle(movies)[0]
