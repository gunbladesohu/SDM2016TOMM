require 'rails_helper'

RSpec.describe Sousuo1sController, type: :controller do
  describe "GET #index" do
    it "returns http success" do
      get :index
      expect(response).to have_http_status(:success)
    end
  end
    describe "GET #new" do
    it "returns http success" do
      get :sousuo1s/new
      expect(response).to have_http_status(:success)
    end
  end
  #     describe "GET #show" do
  #   it "returns http success" do
  #     get :new
  #     expect(response).to have_http_status(:success)
  #   end
  # end
    # describe "GET #show" do
    # let(:sousuo1) do
    #   Sousuo1.create!({title: "test"})
    # end
  # end
  # describe "GET #show" do
  #   let(:sousuo1) do
  #     Sousuo1.create!({title: "test"})
  #   end
  # end

    # it "return http success" do
    #   get :show, id: sousuo1.id
    #   expect(response).to have_http_status(:success)
    # end
    # it "return http success" do
    #   get :new, id: sousuo1.id
    #   expect(response).to have_http_status(:success)
    # end
      

end 
