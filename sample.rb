lines = []
while line = gets
    lines << line.chomp.split(' ')
end
p lines[0][0]


# 入力
# Tokyo Osaka Kyoto
# Tokyo Osaka Kyoto # control + d

# 出力
# "Tokyo"