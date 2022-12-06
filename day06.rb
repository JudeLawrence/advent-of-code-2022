# frozen_string_literal: true

file = File.open('day06-input.txt')

message = file.readline.chars()

def start_of_message_marker(message_array, marker_length)
    i = 0
    message_array.size.times do 
        if message_array[i..i + marker_length - 1].uniq.length == message_array[i..i + marker_length - 1].length
            p i + marker_length
            return
        else
            i += 1
        end
    end
end

start_of_message_marker(message, 14)
