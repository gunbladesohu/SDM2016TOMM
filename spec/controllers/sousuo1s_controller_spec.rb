require 'rails_helper'

RSpec.describe Sousuo1sController, type: :controller do
 describe "GET #new" do
    it "returns http success" do
      get :new
      expect(response).to have_http_status(:success)
    end
    end
    describe "GET #show" do
    let(:sousuo1) do
      Sousuo1.create!({title: "test"})
    end

    it "return http success" do
      get :show, id: sousuo1.id
      expect(response).to have_http_status(:success)
    end
      
end
end
