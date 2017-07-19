# this class will be storing information about player names and scores
class Player
  attr_reader :name

  def initialize(name)
    @name = name
  end
end
