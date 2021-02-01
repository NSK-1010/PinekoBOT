require 'discordrb'
bot = Discordrb::Bot.new token: 'さっきメモったTokenをここに書く', client_id: メモったClient IDをここに書く , prefix: '!'

bot.command :hello do |event|
  event.respond "おはこんばんじにちは!"
end

bot.command :dice do |event,word|
  word = word.chomp
  require 'uri'
  enc = URI.encode_www_form_component(word)
  event.respond "Googleで検索結果はこちらです。\n#{enc}"
end
 
bot.run
