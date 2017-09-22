require 'json'
json_path = %q(/Users/bitman/02_PROJECT/rubystudy/src/buy20170920.json)
 hash = File.open(json_path) do |io|
     .load(io)
end
    p hash

