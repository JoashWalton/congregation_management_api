require "rails_helper"

RSpec.describe KingdomHallsController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(:get => "/kingdom_halls").to route_to("kingdom_halls#index")
    end

    it "routes to #new" do
      expect(:get => "/kingdom_halls/new").to route_to("kingdom_halls#new")
    end

    it "routes to #show" do
      expect(:get => "/kingdom_halls/1").to route_to("kingdom_halls#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/kingdom_halls/1/edit").to route_to("kingdom_halls#edit", :id => "1")
    end


    it "routes to #create" do
      expect(:post => "/kingdom_halls").to route_to("kingdom_halls#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/kingdom_halls/1").to route_to("kingdom_halls#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/kingdom_halls/1").to route_to("kingdom_halls#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/kingdom_halls/1").to route_to("kingdom_halls#destroy", :id => "1")
    end
  end
end
