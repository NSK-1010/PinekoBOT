require 'discordrb'
bot = Discordrb::Bot.new token: 'さっきメモったTokenをここに書く', client_id: メモったClient IDをここに書く , prefix: '/'

bot.command :help do |event|
  event.respond "/help: ヘルプ\n/hello: あいさつしてくれるよ〜\n/ggrks 検索ワード: Google検索のページを開いてくれるよ〜"
end

bot.command :hello do |event|
  event.respond "おはこんばんじにちは!"
end

bot.command :ggrks do |event,word|
  word = word.chomp
  require 'uri'
  enc = "https://www.google.com/search?q=" + URI.encode_www_form_component(word)
  event.respond "Googleで検索結果はこちらです。\n#{enc}"
end
 
bot.run
