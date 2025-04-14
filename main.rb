require_relative "lib/board"
require_relative "lib/tiles"
require_relative "lib/player"
require_relative "lib/opponent"
require_relative "lib/decider"

puts "Welcome to the famous Tic Tac Toe game!"

puts "Do you want to play as X or as O ?"
marker = ""
while marker != "X" && marker != "O"
  marker = gets.chomp.strip
  if marker != "X" && marker != "O"
    puts "Please select either X or O"
  end
end

player = Player.new(marker)

opponent_marker = marker == "X" ? "O" : "X"

opponent = Opponent.new(opponent_marker)

tiles = Tiles.new

participants = [player, opponent]

Board.render(tiles.all, marker, opponent_marker)

game_over = false

until game_over do
  for p in participants
    tiles.set(p.play(tiles.empty), p.designation)
    Board.render(tiles.all, marker, opponent_marker)
    if Decider.winner?(tiles.get(p.designation))
      game_over = true
      if p.designation == :player
        puts "You win!"
      else
        puts "You lose"
      end
      break
    end
    if Decider.draw?(tiles.empty)
      game_over = true
      puts "It's a draw!"
    end
  end
end
