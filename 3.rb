puts "6つの整数を入力してください"
a = gets.split.map(&:to_i)

puts a.sort.reverse[2]


