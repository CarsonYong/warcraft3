# http://classic.battle.net/war3/human/units/footman.shtml
require_relative 'unit'


class Footman < Unit
  attr_accessor :health_points, :attack_power, :damage

  def initialize
    # Need to default the 2 instance variables here
    # Also also give code outside this class access to these variables (via attr_reader, attr_writer or attr_accessor)
    @health_points = 60
    @attack_power = 10
  
  end
    def attack!(enemy)
    enemy.damage(@attack_power)

  end

  def damage(damage)
    @health_points -= damage

  end

end
