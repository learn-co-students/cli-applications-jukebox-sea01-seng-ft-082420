# Add your code here
songs = [
  "Phoenix - 1901",
  "Tokyo Police Club - Wait Up",
  "Sufjan Stevens - Too Much",
  "The Naked and the Famous - Young Blood",
  "(Far From) Home - Tiga",
  "The Cults - Abducted",
  "Phoenix - Consolation Prizes",
  "Harry Chapin - Cats in the Cradle",
  "Amos Lee - Keep It Loose, Keep It Tight"
]

def help
  puts "  I accept the following commands:"
  puts "- help : displays this help message"
  puts "- list : displays a list of songs you can play"
  puts "- play : lets you choose a song to play"
  puts "- exit : exits this program"
end

def play(songs)
  puts "Please enter a song name or number:"
  track = gets.strip
  if track.to_i > 0 && track.to_i <= songs.length
    puts "Playing #{songs[track.to_i - 1]}"
  elsif songs.include?(track)
    puts "Playing #{track}"
  else
    puts "Invalid input, please try again"
  end
end

def list(songs)
  songs.each_with_index { |track, num| puts "#{num + 1}. #{track}"}
end

def exit_jukebox
  puts "Goodbye"
end

def run(songs)
  puts "Please enter a command:"
  while
    command = gets.strip
    if command == "play"
      play(songs)
    elsif command == "list"
      list(songs)
    elsif command == "help"
      help
    elsif command == "exit"
      exit_jukebox
      break
    end
  end
end
