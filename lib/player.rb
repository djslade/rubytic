require_relative "participant"

class Player < Participant
  def initialize(marker)
    super(:player, marker)
  end

  def play(available_tiles)
    move = 0
    while !available_tiles.include?(move)
      move = gets.chomp.to_i
      if !available_tiles.include?(move)
        puts "Invalid move"
      end
    end
    return move
  end
end