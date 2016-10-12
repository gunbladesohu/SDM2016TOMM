require 'rails_helper'

RSpec.describe "analysts/index", type: :view do
  before(:each) do
    assign(:analysts, [
      Analyst.create!(
        :research => "Research",
        :method => "Method",
        :used => "Used"
      ),
      Analyst.create!(
        :research => "Research",
        :method => "Method",
        :used => "Used"
      )
    ])
  end

  it "renders a list of analysts" do
    render
    assert_select "tr>td", :text => "Research".to_s, :count => 2
    assert_select "tr>td", :text => "Method".to_s, :count => 2
    assert_select "tr>td", :text => "Used".to_s, :count => 2
  end
end
