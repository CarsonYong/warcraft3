require_relative 'footman'
require_relative 'peasant'
require_relative 'building'

class Barracks < Building

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
     
       nil
    end

  end

  def gregre
    @food = 1
  end 


  def can_train_footman?
   if gold() >= 135 && food() >= 2
    true
  else
      puts "You don't have enough resources to create a footman"
      return false
   end 
  end

  def train_peasant
    if can_train_peasant?  
    @gold -= 90
    @food -=5
    Peasant.new

    end
  end
  def can_train_peasant?
      if gold >= 90 && food >= 5
        true
     else 
       puts "You don't have enough resources "
      nil
    end

  end

end
