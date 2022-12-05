# frozen_string_literal: true

file = File.open('day-2-input.txt')

points = {
  rock: 1,
  paper: 2,
  scissors: 3
}

data = {
  a: 'rock',
  b: 'paper',
  c: 'scissors',
  x: 'lose',
  y: 'draw',
  z: 'win'
}

score = 0

data = file.readlines.each do |game|
  hands = game.split(' ')
  hands[0] = data[hands[0].downcase.to_sym]
  hands[1] = data[hands[1].downcase.to_sym]
  puts hands[1]
  case hands[1]
  when 'lose'
    score += 0
    if hands[0] == 'rock'
      score += 3
    elsif hands[0] == 'paper'
      score += 1
    elsif hands[0] == 'scissors'
      score += 2
    end
  when 'draw'
    score += 3
    if hands[0] == 'rock'
      score += 1
    elsif hands[0] == 'paper'
      score += 2
    elsif hands[0] == 'scissors'
      score += 3
    end
  when 'win'
    score += 6
    if hands[0] == 'rock'
      score += 2
    elsif hands[0] == 'paper'
      score += 3
    elsif hands[0] == 'scissors'
      score += 1
    end
  end
end

puts score
