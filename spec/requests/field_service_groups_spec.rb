require 'rails_helper'

RSpec.describe "FieldServiceGroups", type: :request do
  describe "GET /field_service_groups" do
    it "works! (now write some real specs)" do
      get field_service_groups_path
      expect(response).to have_http_status(200)
    end
  end
end
