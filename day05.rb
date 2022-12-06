# frozen_string_literal: true

file = File.open('day05-input.txt')


array = [
    ["N","S","D","C","V","Q","T"],          #1 7+1+1-9
    ["M","F","V"],                          #2 3-1+2
    ["F","Q","W","D","P","N","H","M"],      #3 8-3-3
    ["D","Q","R","T","F"],                  #4 5
    ["R","F","M","N","Q","H","V","B"],      #5 8
    ["C","F","G","N","P","W","Q"],          #6 7+3+9
    ["W","F","R","L","C","T"],              #7 6+1+1-5
    ["T","Z","N","S"],                      #8 4-1+6 
    ["M","S","D","J","R","Q","H","N"]       #9 8-6-1-1+3-1+5
]

# array = [
#     ["Z","N"],
#     ["M","C","D"],
#     ["P"]
# ]

i = 1


file.readlines.each do |line|
    amount, from, to = line.chomp().scan(/([0-9]{1,})/).flatten
    
    (array[to.to_i - 1] << array[from.to_i - 1].pop(amount.to_i).flatten).flatten!
    
    # to = to + from.pop(amount).reverse.flatten
    i += 1
end

array.each do |c|
    p c
end
# p array.map { |line| line.count }

p array.map { |line| line[-1] }.join