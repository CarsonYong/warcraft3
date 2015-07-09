require_relative 'spec_helper'


describe Building do 
  describe "initialize" do

    it "Building defaults to 500 HP" do
      building = Building.new
  end
  
end

describe "#health_points" do
  before :each do
    @building = Building.new
  end

  it "can be retrieved (read)" do
    expect(@building.health_points).to eq(500)
  end

  it "cannot be set (written) once initialized" do
    expect {@building.health_points = 500}.to raise_error(NoMethodError)
  end
end
end






