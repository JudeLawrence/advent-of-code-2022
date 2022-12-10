file = File.open('day07-input.txt')

file_system = {}
dir_sizes = Hash.new { |h, k| h[k] = 0 }
total_size = 70000000
space_required = 30000000
space_taken = 0

current_dir = []

file.readlines.each do |line|
  case line.split.first
  when '$'
    case line.split[1]
    when 'cd'
    #   puts 'change directory'
      if line.split(' ').last != '..'
        current_dir << line.split(' ').last
      else
        current_dir.pop
      end
    when 'ls'
    # puts 'listing files and folders in current directory'
    end
  when 'dir'
    # puts "adding folder #{line.split.last} to file system"
    # puts line.split(' ').first
    dir_sizes[line.split(' ')[1..-1]]
  else
    # p "adding a file"
    space_taken += line.split(' ').first.to_i
    current_dir.size.times do |x|
      dir_sizes[current_dir[0..x]] += line.split(' ').first.to_i
    end
  end
end

p dir_sizes.sum { |_k, v| v <= 100000 ? v : 0 }

p "Drive size: #{total_size}"
p "Space taken: #{space_taken}"
p "Space left: #{total_size - space_taken}"
p "Space required for install: #{space_required}"


folders_to_delete =  dir_sizes.select { |_k , v | v > space_required - (total_size - space_taken) }

p folders_to_delete.sort_by { |key, value| value }.first