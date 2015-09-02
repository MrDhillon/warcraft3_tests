require_relative 'spec_helper'

describe Footman do

  before :each do
    @unit = Footman.new(100, 3)
    @unit2 = Footman.new(1,3)
    @unit3 = Footman.new(0,3)
  end

  describe "#can_attack?" do
    it "returns true if there is enough health_points to attack" do
      expect(@unit.can_attack?(@unit2)).to be_truthy
    end


  it "returns false if there isn't enough health_points" do
      expect(@unit.can_attack?(@unit3)).to be_falsey
    end
  end

describe "#attack!" do
    it "returns false if the unit is not dead" do
      expect(@unit3.attack!(@unit)).to be_falsey
    end
    it "return true if the unit can atttack" do
      expect(@unit.attack!(@unit2)).to be_truthy
    end
    # describe "can_recieve_damage?" do
    #   it "returns true is there is enough health_points to receive damage" do
    #     expect(@units.can_recieve_damage?).to be_truthy
    #   end
    # end

    # it "returns false if there isn't enough health_points to receive damage" do
    #   expect(@units).to receive(:health_points).and_return(1)
    #   expect(@units.can_recieve_damage?).to be_falsey
    # end

  end
end