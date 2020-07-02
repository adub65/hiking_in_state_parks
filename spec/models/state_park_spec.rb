require "rails_helper"

RSpec.describe StatePark do

  it "has a valid factory" do
    expect(build(:state_park)).to be_valid
  end

  subject {
        described_class.new(
            name: "Allegheny State Park",
            address: "123 Easy St, Pennsylvania, PA 15603",
            county: "Allegheny"
            )
  }

  it "is invalid without an address" do
    subject.address = nil
    expect(subject).to_not be_valid
  end

  it "is invalid without a state park name" do
    subject.name = nil
    expect(subject).to_not be_valid
  end

  it "is invalid without the state park's county entered" do
     subject.county = nil
    expect(subject).to_not be_valid
  end
end