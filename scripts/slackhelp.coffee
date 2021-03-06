# Description:
#   Slack Help Center Links
#
# Commands:
#   hubot slackhelp - Displays all of the help center links.
#
# Notes:
#   These commands are grabbed from comment blocks at the top of each file.

helpLinks =
  """
ミンナニ ナイショダヨ

```
Command List.
・べーやま slackhelp --- このヘルプを表示する
・べーやま tgs (オススメ|おすすめ|動画) --- 東京女子流のMVをランダムで表示
・べーやま zoi --- 今日も一日がんばるぞい！
・べーやま lgtm --- Looks good to me
・べーやま ping --- PONG！
・べーやま (はつめ|ハツメ|hatume|hatsume) (1-9)--- リトルノア攻略wiki COOP募集掲示板から直近の3件を表示。エリア指定可能
```
  """

module.exports = (robot) ->
  robot.respond /slackhelp$/i, (msg) ->
    msg.send helpLinks
