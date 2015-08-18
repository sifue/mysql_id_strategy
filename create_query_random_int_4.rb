require 'securerandom'
require "date"
(1..5000000).each { |i|
  from_user_id = SecureRandom.random_number(2147483647)
  to_user_id = SecureRandom.random_number(2147483647)
  from_user_id_dummy = SecureRandom.hex(62)
  to_user_id_dummy = SecureRandom.hex(62)
  s1 = Date.parse("2015/07/28")
  s2 = Date.parse("2025/07/28")
  s = Random.rand(s1 .. s2)
  date = s.strftime("%Y/%m/%d %H:%M:%S")
  # より現実に即すようにわざとバルクインサートにしない
  puts "insert into user_relations values(#{from_user_id}, #{to_user_id},'#{from_user_id_dummy}', '#{to_user_id_dummy}', '#{date}');"
}
