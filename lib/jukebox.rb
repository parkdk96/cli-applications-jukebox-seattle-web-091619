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

