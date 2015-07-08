class Unit
  attr_reader :health_points
  attr_writer :attack_power, :damage

   def initialize(health_points, attack_power)
    # Need to default the 2 instance variables here
    # Also also give code outside this class access to these variables (via attr_reader, attr_writer or attr_accessor)
    @health_points =100
    @attack_power = 3
  end

  def attack!(enemy)
    enemy.damage(@attack_power)

  end

  def damage(damage)
    @health_points -= damage

  end

end
