require_relative "participant"

class Opponent < Participant
  def initialize(marker)
    super(:opponent, marker)
  end

  def play(available_tiles)
    return available_tiles.sample
  end
end