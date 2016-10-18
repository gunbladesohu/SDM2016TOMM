require "rails_helper"

RSpec.describe BooksController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/sousuo1s").to route_to("sousuo1s#index")
    end

    it "routes to #new" do
      expect(:get => "/sousuo1s/new").to route_to("sousuo1s#new")
    end

    it "routes to #show" do
      expect(:get => "/sousuo1s/1").to route_to("sousuo1s#show", :id => "1")
    end



  end
end