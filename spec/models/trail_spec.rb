require "rails_helper"

RSpec.describe Trail do

  it "has a valid factory" do
    expect(build(:trail)).to be_valid
  end

  it "is not valid without a distance of trail" do
    expect(build(:trail, distance: nil)).to_not be_valid
  end

  it "is not valid without a trail name" do
    expect(build(:trail, name: nil)).to_not be_valid
  end

  it "is invalid when a trail difficulty is not entered" do
    expect(build(:trail, difficulty: nil)).to_not be_valid
  end
end