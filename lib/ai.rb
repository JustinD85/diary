require './lib/player'


class Ai < Player
  attr_reader :name

  def initialize
    @name = "Artificial Intelligence"
  end

end
