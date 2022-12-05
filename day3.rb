# frozen_string_literal: true

file = File.open('day3-input.txt')

priority = {
  a: 1, b: 2, c: 3, d: 4, e: 5, f: 6, g: 7,
  h: 8, i: 9, j: 10, k: 11, l: 12, m: 13,
  n: 14, o: 15, p: 16, q: 17, r: 18, s: 19,
  t: 20, u: 21, v: 22, w: 23, x: 24, y: 25, z: 26,
  A: 27, B: 28, C: 29, D: 30, E: 31, F: 32, G: 33, H: 34,
  I: 35, J: 36, K: 37, L: 38, M: 39, N: 40, O: 41,
  P: 42, Q: 43, R: 44, S: 45, T: 46, U: 47,
  V: 48, W: 49, X: 50, Y: 51, Z: 52
}

sacks = []

file.readlines.each do |sack|
  sacks << sack.chomp().split('').uniq!
end

sacks = sacks.each_slice(3).to_a
ans = []

sacks.each do |group|
  sack1 = group[0]
  sack2 = group[1]
  sack3 = group[2]
  sack1.each do |item|
    if sack2.include?(item) && sack3.include?(item) then ans << item end
  end
end

ans = ans.map do |item|
  priority[item.to_sym]
end

p ans.sum
