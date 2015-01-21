# Description:
#
# Commands:
#

morning_messages = [
  "おはようございます。今日も一日がんばるぞい！"
]
afternoon_messages = [
  "はらへった〜。メシだメシ。"
]
evening_messages = [
  "定時だよ。今日も一日お疲れさま！"
]

cronJob = require('cron').CronJob

module.exports = (robot) ->
  cronGreetMorning = new cronJob('45 8 * * 1-5', () =>
    envelope = room: "#tgs"
    robot.send envelope, morning_messages[Math.floor(Math.random() * morning_messages.length)]
  )
  cronGreetAfternoon = new cronJob('00 12 * * 1-5', () =>
    envelope = room: "#tgs"
    robot.send envelope, afternoon_messages[Math.floor(Math.random() * afternoon_messages.length)]
  )
  cronGreetEvening = new cronJob('45 17 * * 1-5', () =>
    envelope = room: "#tgs"
    robot.send envelope, evening_messages[Math.floor(Math.random() * evening_messages.length)]
  )
  cronGreetMorning.start()
  cronGreetAfternoon.start()
  cronGreetEvening.start()
