require "rails_helper"

RSpec.describe PublicTalksController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(:get => "/public_talks").to route_to("public_talks#index")
    end

    it "routes to #new" do
      expect(:get => "/public_talks/new").to route_to("public_talks#new")
    end

    it "routes to #show" do
      expect(:get => "/public_talks/1").to route_to("public_talks#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/public_talks/1/edit").to route_to("public_talks#edit", :id => "1")
    end


    it "routes to #create" do
      expect(:post => "/public_talks").to route_to("public_talks#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/public_talks/1").to route_to("public_talks#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/public_talks/1").to route_to("public_talks#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/public_talks/1").to route_to("public_talks#destroy", :id => "1")
    end
  end
end
