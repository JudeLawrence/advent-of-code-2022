# frozen_string_literal: true

file = File.open('day4-input.txt')

rows = []
total = 0

file.readlines.each do |row|
  reg = row.scan(/([0-9]{1,})/)
  rows << [[reg[0][0].to_i, reg[1][0].to_i],[reg[2][0].to_i, reg[3][0].to_i]].sort
end

rows.each do |row|
  # if row[0][0] == row[1][0]
  #   if row[0][1] <= row[1][1] then total += 1 end
  # else
  #   if row[0][1] >= row[1][1] then total += 1 end
  # end
  if row[0][1] >= row[1][0] then total += 1 end
end

p total
