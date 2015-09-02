require_relative 'spec_helper'


describe Barracks do

  before :each do
    @barracks = Barracks.new
  end

  it "starts off with 500 Health points" do
    expect(@barracks.health_points).to eq(500)
  end

  it "starts off with 80 food resources" do
    expect(@barracks.food).to eq(80)
  end

  describe "#damage" do
    it "should reduce the barracks health_points by half the attack_power specified" do
      @barracks.damage(100)
      expect(@barracks.health_points).to eq(450)
    end
  end


end


