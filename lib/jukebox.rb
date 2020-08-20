# Add your code here
require 'pry'
def help
puts "I accept the following commands:"
puts "- help : displays this help message"
puts "- list : displays a list of songs you can play"
puts "- play : lets you choose a song to play"
puts "- exit : exits this program"
end

def list(songs)
songs.each_with_index do |key,index|
  puts "#{index+1}. #{key}"
end
end

def play(songs)
puts "Please enter a song name or number:"
input=gets.strip
isong=false
songs.each do |key|
  if key===input
    isong=true
    puts "Playing #{key}"
  end
end
if input==="1" and isong===false
  puts "Playing #{songs[input.to_i-1]}"
  isong=true
end
if isong===false
  puts "Invalid input, please try again"
  isong=true
end
end


def exit_jukebox
  puts "Goodbye"
end


def run(songs)
input=""
until input === "exit"
  puts "Please enter a command:"
  input=gets.strip
  if input === "exit"
    break
  else if input === "help"
    help
  else if input === "list"
    list(songs)
  else if input === "play"
    play(songs)
  end
end
end
end
end
exit_jukebox
end













