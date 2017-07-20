# this class is responsible for attacking other players
class Game

  attr_reader :players

  def initialize
    @players
  end

  def attack(player)
    player.receive_damage
  end
end
