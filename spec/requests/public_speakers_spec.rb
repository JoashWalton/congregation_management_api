require 'rails_helper'

RSpec.describe "PublicSpeakers", type: :request do
  describe "GET /public_speakers" do
    it "works! (now write some real specs)" do
      get public_speakers_path
      expect(response).to have_http_status(200)
    end
  end
end
