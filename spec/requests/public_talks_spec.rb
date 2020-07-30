require 'rails_helper'

RSpec.describe "PublicTalks", type: :request do
  describe "GET /public_talks" do
    it "works! (now write some real specs)" do
      get public_talks_path
      expect(response).to have_http_status(200)
    end
  end
end
