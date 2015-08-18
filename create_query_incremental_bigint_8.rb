require 'securerandom'
require "date"
(1..5000000).each { |i|
  from_user_id = i * 4294967296
  to_user_id = i * 4294967296 + 2147483648
  from_user_id_dummy = SecureRandom.hex(60)
  to_user_id_dummy = SecureRandom.hex(60)
  s1 = Date.parse("2015/07/28")
  s2 = Date.parse("2025/07/28")
  s = Random.rand(s1 .. s2)
  date = s.strftime("%Y/%m/%d %H:%M:%S")
  # より現実に即すようにわざとバルクインサートにしない
  puts "insert into user_relations values(#{from_user_id}, #{to_user_id},'#{from_user_id_dummy}', '#{to_user_id_dummy}', '#{date}');"
}
