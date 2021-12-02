# frozen_string_literal: true

require_relative './player'

class Game
  attr_reader :player_1, :player_2, :turn

  def initialize(player_1 = Player.new('Player 1'), player_2 = Player.new('Player 2'))
    @player_1 = player_1
    @player_2 = player_2
    @turn = 1
  end

  def attack(player)
    player.take_damage
  end

  def switch_turn
    @turn = if @turn == 1
              2
            else
              1
            end
  end

  def lost?
    if @turn == 1
      @player_1.hitpoints <= 0
    else
      @player_2.hitpoints <= 0
    end
  end

  def play
    if @turn == 1
      attack(@player_2)
    else
      attack(@player_1)
    end
    switch_turn
  end

  def reset
    @player_1.reset
    @player_2.reset
    @turn = 1
  end
end
