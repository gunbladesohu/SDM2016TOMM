require 'rails_helper'

RSpec.describe "Uselesstables", type: :request do
  describe "GET /uselesstables" do
    it "works! (now write some real specs)" do
      get uselesstables_path
      expect(response).to have_http_status(200)
    end
  end
end
