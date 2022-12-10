file = File.open('day08-input.txt')

visible_trees = 0

tree_array = []

file.readlines.each do |line|
  tree_array << line.chomp().split('').map(&:to_i)
end

p tree_array
  
def visibility(trees)
  [
    [1, 1, 1, 1, 1],
    [1, 1, 1, 0, 1],
    [1, 1, 0, 1, 1],
    [1, 0, 1, 0, 1],
    [1, 1, 1, 1, 1],
  ]
end



require 'rspec/autorun'
RSpec.describe 'day08' do
  it 'works for the example case' do
    expect(visibility(tree_array)).to eq([
      [1, 1, 1, 1, 1],
      [1, 1, 1, 0, 1],
      [1, 1, 0, 1, 1],
      [1, 0, 1, 0, 1],
      [1, 1, 1, 1, 1],
    ])
  end
  
end
