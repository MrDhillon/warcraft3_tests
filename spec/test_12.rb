require_relative 'spec_helper'

describe Footman do

  before :each do
    @unit = Footman.new(0, 3)
  end

  describe "#dead?" do
    it "should be alive unless the unit is dead" do
      expect(@unit.health_points).to eq(0) # HP started at 0
      expect(@unit.dead?).to eq(true)
    end
  end

end
