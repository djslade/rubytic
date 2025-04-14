require_relative "lib/board"
require_relative "lib/tiles"
require_relative "lib/player"
require_relative "lib/opponent"
require_relative "lib/decider"
require_relative "lib/start"
require_relative "lib/set_player"
require_relative "lib/set_opponent"

start

player = set_player
opponent = set_opponent

Board.render(tiles.all, marker, opponent_marker)

game_over = false

until game_over do
  for p in participants
    tiles.set(p.play(tiles.empty), p.designation)
    Board.render(tiles.all, player.marker, opponent.marker)
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
