require_relative '../config/environment'

exit = false
play_music
system 'clear'
scroll_text header
while !exit
  system 'clear'
  a = "STOP REMOVING VAPORWAVE!!!!"
  puts header
  scroll_text "What would you like to do"
  spacer
  input = gets.chomp 
  
  case input
  when "stop music"
    kill_music
  when "exit"
    kill_music
    exit = true
  else
    puts "Invalid"
  end

end