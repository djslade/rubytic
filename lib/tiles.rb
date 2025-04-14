class Tiles
  def initialize
    @hash = Hash.new
    1.upto(9) { |i| @hash[i] = :empty }
  end

  def all
    return @hash
  end

  def empty
    empty_tiles = @hash.select { |key, value| value == :empty }
    return empty_tiles.keys
  end

  def get(symbol)
    participant_tiles = @hash.select { |key, value| value == symbol}
    return participant_tiles.keys
  end

  def players
    return get(:player)
  end

  def opponents
    return get(:opponent)
  end

  def set(key, value)
    @hash[key] = value
  end

  def player_set(key)
    set(key, :player)
  end

  def opponent_set(key)
    set(key, :opponent)
  end
end