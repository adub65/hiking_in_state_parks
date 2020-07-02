require "rails_helper"

RSpec.describe User do

  it "has a valid factory" do
    expect(build(:user)).to be_valid
  end

  it "is not valid without full name" do
    expect(build(:user, full_name: nil)).to_not be_valid
  end

  it "is not valid when email is non-unique" do
    email1 = create(:user, email: "aw@email.com")
    email2 = build(:user, email: "aw@email.com")
    expect(email2).to_not be_valid
  end
end
