class Player

  attr_reader :hitpoints, :name

  def initialize(name)
    @name = name
    @hitpoints = 100
  end

  def take_damage
    @hitpoints -= 10
  end

  def change_name(name)
    @name = name
  end
end