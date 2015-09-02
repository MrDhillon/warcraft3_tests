require_relative 'spec_helper'

describe SeigeEngine do

  before :each do
    @seigeengine = SeigeEngine.new
  end

  it "Has and knows its health points (HP)" do
    expect(@seigeengine.health_points).to eq(400)
  end

  it "Has and knows its attack power (AP)" do
    expect(@seigeengine.attack_power).to eq(50)
  end



end

describe Barracks do

  before :each do
    @barracks = Barracks.new
    @barracks1 = Barracks.new(1000,80,500,50)
  end

  it "return true if there is enough resources to create seigeengine" do
    expect(@barracks.create_engine).to be_truthy
  end

  it "return false if there is not enough resources to ceate seigeengine" do |variable|
    expect(@barracks1.create_engine).to be_falsey
  end

end