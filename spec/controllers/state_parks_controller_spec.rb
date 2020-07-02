require "rails_helper"

RSpec.describe StateParksController do

  describe "responds to" do
    it "responds to html by default" do
      post :create, params: { state_park: { name: "Any State Park" } }
      expect(response.content_type).to eq "text/html; charset=utf-8"
    end
  end

  describe "GET /state_parks/new" do
    it "returns a 300" do
      get :new
      expect(response).to have_http_status(:found)
    end
  end
end