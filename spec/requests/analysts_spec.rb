require 'rails_helper'

RSpec.describe "Analysts", type: :request do
  describe "GET /analysts" do
    it "works! (now write some real specs)" do
      get analysts_path
      expect(response).to have_http_status(200)
    end
  end
end
