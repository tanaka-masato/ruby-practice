puts "3桁の数字を入力してください"
numbers = gets
if numbers.size > 4
    puts "error"
    exit
end

if (/^[+-]?[0-9]+$/ =~ numbers.to_s)
    numbers = numbers.to_i
    numbers *= 2
    puts numbers
else
    puts "error"
end

