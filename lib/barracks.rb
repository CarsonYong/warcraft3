require_relative 'footman'

class Barracks

  attr_accessor :gold, :food

  def initialize
    @gold = 1000
    @food =80
  end

  def train_footman
    if can_train_footman? 
      @gold >= 135 && @food >= 2
      @gold -= 135
      @food -=2
      return Footman.new
    else 
      puts "You don't have enough resources to create a footman"
       nil
    end

  end


  def can_train_footman?
    @gold >= 135 && @food >= 2
    true

  end
end
