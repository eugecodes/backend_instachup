require "rails_helper"

RSpec.describe ServiceZonesController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/service_zones").to route_to("service_zones#index")
    end

    it "routes to #new" do
      expect(:get => "/service_zones/new").to route_to("service_zones#new")
    end

    it "routes to #show" do
      expect(:get => "/service_zones/1").to route_to("service_zones#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/service_zones/1/edit").to route_to("service_zones#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/service_zones").to route_to("service_zones#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/service_zones/1").to route_to("service_zones#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/service_zones/1").to route_to("service_zones#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/service_zones/1").to route_to("service_zones#destroy", :id => "1")
    end

  end
end
