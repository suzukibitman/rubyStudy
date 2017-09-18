
def execute_each_sec(sleep_sec)
    yield
    sleep sleep_sec
end

5.times do
    execute_each_sec(1) do ||
        puts "実行時間:#{Time.now}"
    end
end
