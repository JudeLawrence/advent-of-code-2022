puts 'hello'

file = File.open('day-1-input.txt')

# data = []
elf_sack = []

# file.readlines.each do |line|
#   if line == 0
#     data << elf_sack
#   else
#     elf_sack << line
#   end
# end

data = file.readlines.map(&:chomp)

new_data = []

data.each do |element|
  if element != ''
    elf_sack << element.to_i
  else
    new_data << elf_sack.sum
    elf_sack = []
  end
end

new_data.sort!.reverse!

puts new_data[0..2].sum
