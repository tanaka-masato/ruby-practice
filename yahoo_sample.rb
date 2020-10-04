a = gets.split.map(&:to_i)
b = gets.split.map(&:to_s)

sum = 0

6.times do |i|
  if b[i] == "Alice"
    sum += a[i]
  end
end

puts sum