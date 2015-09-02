require_relative 'spec_helper'


describe Barracks do

  before :each do
    @barracks = Barracks.new
  end

  it "Barracks can start of with 500 lumber" do
    expect(@barracks.lumber).to eq(500)
  end

end