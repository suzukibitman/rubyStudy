require 'json'
require 'uri'
require 'net/http'
require 'mysql2'

uri = URI.parse('https://so2.mutoys.com/master/item.json')
json = Net::HTTP.get(uri)
result = JSON.parse(json)
#p result["1"] #keyが1のhashの配列？
str = result["1"]["name"] #keyが""1のhashの中のkey nameの値
puts "スカラーからの書き方：" + str
#データベース操作
client = Mysql2::Client.new(:host => 'localhost', :username => 'root', :password => '')
result.each{|key, value|
    category = result[key]["category"]
    item_id = result[key]["item_id"]
    name = result[key]["name"]
    scale = result[key]["scale"]
    sort = result[key]["sort"]
    
    q = %Q(insert into so2.itemInfo
    (category, item_id, name, scale, sort) 
    values('#{category}', #{item_id}, '#{name}', '#{scale}', #{sort}))
    client.query(q)
}

puts "code finish"
