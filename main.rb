require 'json'
require 'uri'
require 'net/http'

=begin
TODO
☆jsonデータで遊んで見る
    効果：何がどんなものに属しているかを一発で引張出せる

データベースに入れる
    整形済データをデータベースに入れる（mysqlが良いかな？

一定時間でjsonをリクエストする
    おそらく、ここらへんでは重要なのは例外処理？というか全体的に例外処理が必要かもね！

これらのでーたを自由に扱えるようにして

ruby on railでサイトに整える
=end

#file.open("item.json") do |file|
uri = URI.parse('https://so2.mutoys.com/master/item.json')
json = Net::HTTP.get(uri)
result = JSON.parse(json)
#p result["1"] #keyが1のhashの配列？
#str = result["1"]["name"] #keyが1のhashの中のkey nameの値
#puts str
count = 0
result.each{|key, value|
    printf("key:\t" + key + "\n")
    puts result[key]
    count +=1
}
p count


#itemHash = JSON.load(uri)
#puts result
