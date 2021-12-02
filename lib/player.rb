class Player

  attr_reader :name, :hitpoints

  def initialize(name)
    @name = name
    @hitpoints = 100
  end

  def take_damage
    @hitpoints -= 10
  end

  def attack(player)
    player.take_damage
  end
end