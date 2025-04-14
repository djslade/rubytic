class Board
  def self.render_tile(tiles, tile_index, player_marker, opponent_marker)
    if tiles[tile_index] == :empty
      return tile_index
    end
    if tiles[tile_index] == :player
      return player_marker
    end
    return opponent_marker
  end

  def self.render_border
    return " --- --- --- "
  end

  def self.render_row(tiles, player_marker, opponent_marker, start_tile, end_tile)
    row = "|"
    for i in start_tile..end_tile
      row += " #{render_tile(tiles, i, player_marker, opponent_marker)} |"
    end
    return row
  end

  def self.render(tiles, player_marker, opponent_marker)
    puts render_border
    puts render_row(tiles, player_marker, opponent_marker, 1, 3)
    puts render_border
    puts render_row(tiles, player_marker, opponent_marker, 4, 6)
    puts render_border
    puts render_row(tiles, player_marker, opponent_marker, 7, 9)
    puts render_border
  end

  private_class_method :render_tile, :render_border, :render_row
end