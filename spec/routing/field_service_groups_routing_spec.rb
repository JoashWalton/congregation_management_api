require "rails_helper"

RSpec.describe FieldServiceGroupsController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(:get => "/field_service_groups").to route_to("field_service_groups#index")
    end

    it "routes to #new" do
      expect(:get => "/field_service_groups/new").to route_to("field_service_groups#new")
    end

    it "routes to #show" do
      expect(:get => "/field_service_groups/1").to route_to("field_service_groups#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/field_service_groups/1/edit").to route_to("field_service_groups#edit", :id => "1")
    end


    it "routes to #create" do
      expect(:post => "/field_service_groups").to route_to("field_service_groups#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/field_service_groups/1").to route_to("field_service_groups#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/field_service_groups/1").to route_to("field_service_groups#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/field_service_groups/1").to route_to("field_service_groups#destroy", :id => "1")
    end
  end
end
