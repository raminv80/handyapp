require "spec_helper"

describe QuataController do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/quata").to route_to("quata#index")
    end

    it "routes to #new" do
      expect(:get => "/quata/new").to route_to("quata#new")
    end

    it "routes to #show" do
      expect(:get => "/quata/1").to route_to("quata#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/quata/1/edit").to route_to("quata#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/quata").to route_to("quata#create")
    end

    it "routes to #update" do
      expect(:put => "/quata/1").to route_to("quata#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/quata/1").to route_to("quata#destroy", :id => "1")
    end

  end
end
