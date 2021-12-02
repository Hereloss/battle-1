require_relative './player'

class Game
  attr_reader :player_1, :player_2, :turn

  def initialize(player_1 = Player.new("Player 1"), player_2 = Player.new("Player 2"))
    @player_1 = player_1
    @player_2 = player_2
    @turn = 1
  end

  def attack(player)
    player.take_damage
  end
  
  def switch_turn
    if @turn == 1
      @turn = 2
    else
      @turn = 1
    end
  end

  def play
    if @turn == 1
      attack(@player_2)
      switch_turn
    else 
      attack(@player_1)
      switch_turn
    end
  end
end