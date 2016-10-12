require 'rails_helper'

RSpec.describe "analysts/show", type: :view do
  before(:each) do
    @analyst = assign(:analyst, Analyst.create!(
      :research => "Research",
      :method => "Method",
      :used => "Used"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Research/)
    expect(rendered).to match(/Method/)
    expect(rendered).to match(/Used/)
  end
end
