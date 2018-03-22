require "csv"             # 使用 csv 库

code = ARGV[0]            # 读取参数
start_time = Time.now     # 获取操作开始时间

# 将 Shift_JIS 转换为 UTF-8 后打开 CSV 文件
CSV.open("KEN_ALL.CSV", "r:Shift_JIS:UTF-8") do |csv|
  csv.each do |record|
    # 邮政编码与参数指定的一致则输出该数据
    puts record.join(" ") if record[2] == code
  end
end

p Time.now - start_time      # 输出所耗费的查询时间

# 输入 ruby 23.1.read_csv.rb 1000002
