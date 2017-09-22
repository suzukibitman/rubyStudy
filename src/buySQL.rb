require 'json'
require 'uri'
require 'net/http'
require 'mysql2'
#https://so2.mutoys.com/json/report/buy{YYYY}{MM}{DD}.json
#uri = URI.parse('https://so2.mutoys.com/json/report/buy20170920.json')
#json = Net::HTTP.get(uri)
file = File.read('buy20170920.json')
result = JSON.parse(file)

#データベース操作
client = Mysql2::Client.new(
    :host => 'localhost', :username => 'root', :password => ''
)

result.each{|key, value|

    p key#debug
    branch(client, "", "", value)
    p "branch 呼び出した"
    

    #TODO:データ　ベースに入れる関数？を作成する。特に→どのデータベースに入れるか
    #どのどんあデータ、フラグを入れるかである。楽しくなってきたね〜♪
    #
    #TODO:分岐用の関数を作成する

    # category = result[key]["category"]
    # item_id = result[key]["item_id"]
    # name = result[key]["name"]
    # scale = result[key]["scale"]
    # sort = result[key]["sort"]

    # q = %Q(insert into so2.itemInfo
    # (category, item_id, name, scale, sort) 
    # values('#{category}', #{item_id}, '#{name}', '#{scale}', #{sort}))
    # client.query(q)
}
puts "code finish"

=begin
ここではどこか渡してくれるkeyを解決していく。
=end

def branch(key, client, flag1, flag2, value)
    if(key == "area")
        p "-------------------"
        result2 = result[key]

        result2.each{|key2, value2|
            #この下には特にはさらに階層があるので〜ここで処理
            if(key2 == "1")
                p "-------------------"
                result3 = result2[key2
                                  result3.each{|key3, value3|
                                      p key3
                                      #関数の処理をする
                                      #できれば関数の処理はトランザクションを使用する。
                                  }
            end

        }

    else if key =="system" then

    else if key =="user" then

    else if key =="request" then

    end
end
