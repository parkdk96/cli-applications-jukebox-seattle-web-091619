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
  if songs.includes?(song)
    puts "Playing #{song}"
  else 
    puts "Invalid input, please try again"
end

def list (songs)
  songs.each_with_index {|name, index| puts "#{index + 1}. #{track} "}
end

def exit_jukebox
  puts "Goodbye"
end

def run 
  puts "Please enter a command:"
  input = gets.strip
end