require "rails_helper"

RSpec.describe Trail do

  it "has a valid factory" do
    expect(build(:trail)).to be_valid
  end

  subject {
        described_class.new(
            name: "Allegheny Trail",
            distance: 5,
            difficulty: "Easy"
            )
  }

  it "is not valid without a distance of trail" do
    subject.distance = nil
    expect(subject).to_not be_valid
  end

  it "is not valid without a trail name" do
    subject.name = nil
    expect(subject).to_not be_valid
  end

  it "is invalid when a trail difficulty is not entered" do
     subject.difficulty = nil
    expect(subject).to_not be_valid
  end
end