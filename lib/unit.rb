class Unit
  attr_reader :health_points, :attack_power

   def initialize(health_points, attack_power)
    # Need to default the 2 instance variables here
    # Also also give code outside this class access to these variables (via attr_reader, attr_writer or attr_accessor)
    @health_points = 30
    @attack_power = 5
  end



end
