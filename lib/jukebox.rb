# Add your code here
def help 
  puts "I accept the following commands:"
  puts "- help : displays this help message"
  puts "- list : displays a list of songs you can play"
  puts "- play : lets you choose a song to play"
  puts "- exit : exits this program"
end

def play(songs)
  puts "Please enter a song name or number:"
  song = gets.strip
  if songs.include?(song)
    puts "Playing #{song}"
  # if a number is entered, we want to make sure that number is in the range of available songs
  # since array indeces begin at 0, if a valid number is given need to subtract 1 to get the requested song
  elsif (1..songs.length + 1).include?(song.to_i)
    puts "Playing #{songs[song.to_i - 1]}"
  else
    puts "Invalid input, please try again"
  end
end

def list (songs)
  songs.each_with_index {|track, index| puts "#{index + 1}. #{track} "}
end

def exit_jukebox
  puts "Goodbye"
end

def run(songs)
  puts "Please enter a command:"
  input = gets.strip
  until input == "exit"
    case input
      when "play"
        play(songs)
      when "list"
        list(songs)
      when "help"
        help
    end
    puts "Please enter a command:"
    input = gets.strip
  end
  exit_jukebox
end

