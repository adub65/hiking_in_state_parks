require "rails_helper"

RSpec.describe User do

  it "has a valid factory" do
    expect(build(:user)).to be_valid
  end

  subject {
        described_class.new(
            full_name: "Joe Wilson",
            email: "joe@example.com",
            password: "Example456!"
            )
  }
  it "is valid" do
    expect(subject).to be_valid
  end

  it "is not valid without full name" do
    subject.full_name = nil
    expect(subject).to_not be_valid
  end

  it "is not valid when email is non-unique" do
     subject.email = nil
    expect(subject).to_not be_valid
  end
end