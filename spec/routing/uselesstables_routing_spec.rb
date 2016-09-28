require "rails_helper"

RSpec.describe UselesstablesController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/uselesstables").to route_to("uselesstables#index")
    end

    it "routes to #new" do
      expect(:get => "/uselesstables/new").to route_to("uselesstables#new")
    end

    it "routes to #show" do
      expect(:get => "/uselesstables/1").to route_to("uselesstables#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/uselesstables/1/edit").to route_to("uselesstables#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/uselesstables").to route_to("uselesstables#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/uselesstables/1").to route_to("uselesstables#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/uselesstables/1").to route_to("uselesstables#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/uselesstables/1").to route_to("uselesstables#destroy", :id => "1")
    end

  end
end
