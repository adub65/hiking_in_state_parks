require "rails_helper"

RSpec.describe Hike do
  it "has a valid factory" do
    expect(build(:hike)).to be_valid
  end
  
  subject {
        described_class.new(
            trail_id: 7,
            user_id: 2,
            duration: "6",
            date_hiked: "02/12/2020"
            )
  }

  it "is not valid without a duration of the hike" do
    subject.duration = nil
    expect(subject).to_not be_valid
  end

  it "is invalid without a date of hike" do
     subject.date_hiked = nil
    expect(subject).to_not be_valid
  end
end
