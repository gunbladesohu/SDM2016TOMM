require 'rails_helper'

RSpec.describe "uselesstables/show", type: :view do
  before(:each) do
    @uselesstable = assign(:uselesstable, Uselesstable.create!(
      :name => "Name"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
  end
end
