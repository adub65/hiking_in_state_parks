require "rails_helper"

RSpec.describe StatePark do

  it "has a valid factory" do
    expect(build(:state_park)).to be_valid
  end

  it "is invalid without an address" do
    expect(build(:state_park, address: nil)).to_not be_valid
  end

  it "is invalid without a state park name" do
    expect(build(:state_park, name: nil)).to_not be_valid
  end

  it "is invalid without the state park's county entered" do
    expect(build(:state_park, county: nil)).to_not be_valid
  end
end