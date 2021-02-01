require 'discordrb'
bot = Discordrb::Bot.new token: 'さっきメモったTokenをここに書く', client_id: メモったClient IDをここに書く , prefix: '!'

bot.command :hello do |event|
  event.respond 'おはこんばんじにちは!'
end
 
bot.run
