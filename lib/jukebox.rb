# Add your code here
def help 
  puts "I accept the following commands:"
  puts "- help : displays this help message"
  puts "- list : displays a list of songs you can play"
  puts "- play : lets you choose a song to play"
  puts "- exit : exits this program"
end

def play(songs)
  
end

def list (songs)
  puts "Please enter a song name or number:"
  song = gets.strip
  if songs.includes?(song)
end

def exit_jukebox
  puts "Goodbye"
end