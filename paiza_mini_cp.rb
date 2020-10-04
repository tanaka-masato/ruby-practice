input_line = gets.to_i
number = []

input_line.times do
  input = gets.split(' ')
  if input[0] == 'SET'
    if input[1] == '1'
      number[0] = input[2].to_i
    elsif input[1] == '2'
      number[1] = input[2].to_i
    end
  elsif input[0] == 'ADD'
    number[1] = number[0] + input[1].to_i
  elsif input[0] == 'SUB'
    number[1] = number[0] - input[1].to_i
  end
end

puts number[0].to_s + ' ' +number[1].to_s