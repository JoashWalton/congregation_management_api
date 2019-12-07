require 'rails_helper'

RSpec.describe "Souls", type: :request do
  describe "GET /souls" do
    it "works! (now write some real specs)" do
      get souls_path
      expect(response).to have_http_status(200)
    end
  end
end
