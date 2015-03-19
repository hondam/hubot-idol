# Description:
#   東京女子流のMVのURLを返す
#
# Commands:
#   hubot tgs (オススメ|おすすめ|動画) 
#
# Author:
#   Hubot, Hondam

_ = require('lodash');

movies = [
  # Stay with me
  "https://www.youtube.com/watch?v=aQpWT5T5mqg",
  # Say long goodbye
  "https://www.youtube.com/watch?v=elCYCl98Dro",
  # ヒマワリと星屑 -English Version-
  "https://www.youtube.com/watch?v=RQjit4N09js",
  # Killing Me Softly
  "https://www.youtube.com/watch?v=XCzdW-z1ZSU",
  # Come On Honey! feat. 新井ひとみ (東京女子流)
  "https://www.youtube.com/watch?v=IhlXlaHH3D4",
  # 十字架
  "https://www.youtube.com/watch?v=5QjACk4qM6g",
  # Partition Love
  "https://www.youtube.com/watch?v=QEojg0y70LQ",
  # マジ勉NOW! feat.新井ひとみ
  "https://www.youtube.com/watch?v=XX4nKKckjLo",
  # ちいさな奇跡
  "https://www.youtube.com/watch?v=qrBAEsHpyvY",
  # 運命
  "https://www.youtube.com/watch?v=Vhbq65WcH3o",
  # 約束
  "https://www.youtube.com/watch?v=8JnRFB3NPvs",
  # Liar
  "https://www.youtube.com/watch?v=9JAnvRCp0J0",
  # Limited addiction
  "https://www.youtube.com/watch?v=X8VX6_mRABs",
  # 鼓動の秘密
  "https://www.youtube.com/watch?v=tCcEbye6wuU",
  # Love like candy floss
  "https://www.youtube.com/watch?v=fKvVpRbU5Cg",
  # ヒマワリと星屑
  "https://www.youtube.com/watch?v=yduuHMe1KQ8",
  # おんなじキモチ
  "https://www.youtube.com/watch?v=swPMcWjt_Kg",
  # 頑張って いつだって 信じてる
  "https://www.youtube.com/watch?v=PoHwMYq08K4",
  # キラリ
  "https://www.youtube.com/watch?v=Rl7e_edEtPU"
]

module.exports = (robot) ->

  # 発言に反応
  robot.respond /tgs (オススメ|おすすめ|動画)/i, (msg) ->
    msg.send _.shuffle(movies)[0]
