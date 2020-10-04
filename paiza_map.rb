input_line = gets.split.map(&:to_i)

lines = []
# p input_line[0]
j = 0
fin_i = 0
fin_j = 0

input_line[0].times do |i|
  line = gets
  lines << line.chomp.split('')
  fin_i = i

  fin_j = j
  j += 1
end

j = 0
# p fin_i

input_line[0].times do |i|
  input_line[1].times do |j|
    if i != 0 && i != fin_i && j != 0 && j != fin_j
      if lines[i + 1][j] == '#' && lines[i - 1][j] == '#' && lines[i][j + 1] == '#' && lines[i][j - 1] == '#'
        puts i.to_s + ' ' + j.to_s 
      end
    elsif i != 0 && i != fin_i && j == 0
      if lines[i + 1][j] == '#' && lines[i - 1][j] == '#' && lines[i][j + 1] == '#'
        puts i.to_s + ' ' + j.to_s 
      end
    elsif i != 0 && i != fin_i && j == fin_j
      if lines[i + 1][j] == '#' && lines[i - 1][j] == '#' && lines[i][j - 1] == '#'
        puts i.to_s + ' ' + j.to_s 
      end
    elsif i == 0 && j != 0 && j != fin_j
      if lines[i + 1][j] == '#' && lines[i][j + 1] == '#' && lines[i][j - 1] == '#'
        puts i.to_s + ' ' + j.to_s 
      end
    elsif i == fin_i && j != 0 && j != fin_j
      if lines[i - 1][j] == '#' && lines[i][j + 1] == '#' && lines[i][j - 1] == '#'
        puts i.to_s + ' ' + j.to_s 
      end
    elsif i == 0 && j == 0
      if lines[i + 1][j] == '#' && lines[i][j + 1] == '#'
        puts i.to_s + ' ' + j.to_s 
      end
    elsif i == fin_i && j == 0
      if lines[i - 1][j] == '#' && lines[i][j + 1] == '#'
        puts i.to_s + ' ' + j.to_s 
      end
    elsif i == 0 && j == fin_j
      if lines[i + 1][j] == '#' && lines[i][j - 1] == '#'
        puts i.to_s + ' ' + j.to_s 
      end
    elsif i == fin_i && j == fin_j
      if lines[i - 1][j] == '#' && lines[i][j - 1] == '#'
        puts i.to_s + ' ' + j.to_s 
      end
    end
  end
end