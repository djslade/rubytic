require_relative "player"

def set_player
  puts "Do you want to play as X or as O ?"
  marker = ""
  begin
    marker = gets.chomp.strip
    if marker != "X" && marker != "O"
      raise StandardError
    end
    return Player.new(marker)
  rescue StandardError
    puts "Please choose between 'X' or 'O'"
    retry
  end
end