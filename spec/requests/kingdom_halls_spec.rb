require 'rails_helper'

RSpec.describe "KingdomHalls", type: :request do
  describe "GET /kingdom_halls" do
    it "works! (now write some real specs)" do
      get kingdom_halls_path
      expect(response).to have_http_status(200)
    end
  end
end
