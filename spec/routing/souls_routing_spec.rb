require "rails_helper"

RSpec.describe SoulsController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(:get => "/souls").to route_to("souls#index")
    end

    it "routes to #new" do
      expect(:get => "/souls/new").to route_to("souls#new")
    end

    it "routes to #show" do
      expect(:get => "/souls/1").to route_to("souls#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/souls/1/edit").to route_to("souls#edit", :id => "1")
    end


    it "routes to #create" do
      expect(:post => "/souls").to route_to("souls#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/souls/1").to route_to("souls#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/souls/1").to route_to("souls#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/souls/1").to route_to("souls#destroy", :id => "1")
    end
  end
end
