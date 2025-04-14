class Decider
  @@winning_sets = [
    [1, 2, 3],
    [4, 5, 6],
    [7, 8, 9],
    [1, 4, 7],
    [2, 5, 8],
    [3, 6, 9],
    [1, 5, 9],
    [3, 5, 7]
  ] 
  def self.winner?(participant_tiles)
    for set in @@winning_sets
      if (set - participant_tiles).empty?
        return true
      end
    end
    return false
  end

  def self.draw?(available_tiles)
    return available_tiles.empty?
  end
end