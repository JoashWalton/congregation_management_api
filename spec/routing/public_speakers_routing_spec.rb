require "rails_helper"

RSpec.describe PublicSpeakersController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(:get => "/public_speakers").to route_to("public_speakers#index")
    end

    it "routes to #new" do
      expect(:get => "/public_speakers/new").to route_to("public_speakers#new")
    end

    it "routes to #show" do
      expect(:get => "/public_speakers/1").to route_to("public_speakers#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/public_speakers/1/edit").to route_to("public_speakers#edit", :id => "1")
    end


    it "routes to #create" do
      expect(:post => "/public_speakers").to route_to("public_speakers#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/public_speakers/1").to route_to("public_speakers#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/public_speakers/1").to route_to("public_speakers#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/public_speakers/1").to route_to("public_speakers#destroy", :id => "1")
    end
  end
end
