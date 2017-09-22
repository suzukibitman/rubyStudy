require 'json'
require 'uri'
require 'net/http'
require 'mysql2'

uri = URI.parse('https://so2.mutoys.com/master/area.json')
json = Net::HTTP.get(uri)
result = JSON.parse(json)

client = Mysql2::Client.new(:host => 'localhost', :username => 'root', :password => '')
result.each{|key, value|
    area_id = result[key]["area_id"]
    height = result[key]["height"]
    name = result[key]["name"]
    pos_x = result[key]["pos_x"]
    pos_y = result[key]["pos_y"]
    
    q = %Q(insert into so2.area
    (area_id, height, name, pos_x, pos_y)
    values(#{area_id}, #{height}, '#{name}', #{pos_x}, #{pos_y}))
    client.query(q)
}

puts "code finish"
