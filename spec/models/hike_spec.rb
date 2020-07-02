require "rails_helper"

RSpec.describe Hike do
  it "has a valid factory" do
    expect(build(:hike)).to be_valid
  end

  it "is not valid without a duration of the hike" do
    expect(build(:hike, duration: nil)).to_not be_valid
  end

  it "is invalid without a date of hike" do
    expect(build(:hike, date_hiked: nil)).to_not be_valid
  end
end
