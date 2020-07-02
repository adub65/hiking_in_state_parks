require "rails_helper"

RSpec.describe StateParksController do
  describe "GET /state_parks/new" do
    it "redirects when not logged in" do
      get :new
      expect(response).to have_http_status(:found)
      expect(response.body).to include("redirected")
    end
  end
end