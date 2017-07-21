# this class is responsible for attacking other players
class Game

  attr_reader :current_player, :current_victim

  def initialize(player_1, player_2)
    @players = [player_1, player_2]
    @current_player = player_1
    @current_victim = player_2
  end

  def player_1
    @players.first
  end

  def player_2
    @players.last
  end

  def attack
    @current_victim.receive_damage
  end

  def switch_turns
    @current_player = other_player
    @current_victim = other_player
  end

  private
  def other_player
    @current_player == player_1 ? player_2 : player_1
  end

end
