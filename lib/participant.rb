class Participant
  def initialize(designation, marker)
    @designation = designation
    @marker = marker
  end

  def play
    raise NotImplementedError, "Not yet implemented"
  end

  def designation
    return @designation
  end

  def marker
    return @marker
  end
end