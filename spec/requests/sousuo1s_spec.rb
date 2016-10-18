require 'rails_helper'

RSpec.describe "sousuo1s", type: :request do
  describe "GET /sousuo1s" do
    it "Get sousuo1s paths " do
      get sousuo1s_path
      expect(response).to have_http_status(200)
    end
  end
end
