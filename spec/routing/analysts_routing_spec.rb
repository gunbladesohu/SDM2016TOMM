require "rails_helper"

RSpec.describe AnalystsController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/analysts").to route_to("analysts#index")
    end

    it "routes to #new" do
      expect(:get => "/analysts/new").to route_to("analysts#new")
    end

    it "routes to #show" do
      expect(:get => "/analysts/1").to route_to("analysts#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/analysts/1/edit").to route_to("analysts#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/analysts").to route_to("analysts#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/analysts/1").to route_to("analysts#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/analysts/1").to route_to("analysts#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/analysts/1").to route_to("analysts#destroy", :id => "1")
    end

  end
end
