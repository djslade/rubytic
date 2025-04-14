require_relative "opponent"

def set_opponent
  opponent_marker = marker == "X" ? "O" : "X"
  return Opponent.new(opponent_marker)
end