while true do
  sleep(1)
  puts `mysql -N -uroot -proot user_relations_test -e "select NOW(), count(*) from user_relations;" >> count.log`
end

