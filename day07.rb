file = File.open('day07-input.txt')

file_system = {}
dir_sizes = Hash.new { |h, k| h[k] = 0 }

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
    #   puts 'listing files and folders in current directory'
    end
  when 'dir'
    # puts "adding folder #{line.split.last} to file system"
    puts line.split(' ').first
    dir_sizes[line.split(' ')[1..-1]]
  else
    # p "adding a file"
    dir_sizes[current_dir[0..-1]] += line.split(' ').first.to_i
  end
end

# p current_dir

# p dir_sizes
p current_dir
p dir_sizes
p dir_sizes.sum { |k, v| v <= 100000 ? v : 0 }
