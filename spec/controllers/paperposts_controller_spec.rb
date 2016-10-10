require 'rails_helper'

RSpec.describe PaperpostsController, type: :controller do
  context "with valid attributes" do
      it "create new paperpost" do
        post :create, paperpost: paperpost.attribute_for(:paperpost)
        expect(Paperpost.count).to eq(1)
      end
    end
  end
