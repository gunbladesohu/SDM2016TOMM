require 'rails_helper'

RSpec.describe "analysts/edit", type: :view do
  before(:each) do
    @analyst = assign(:analyst, Analyst.create!(
      :research => "MyString",
      :method => "MyString",
      :used => "MyString"
    ))
  end

  it "renders the edit analyst form" do
    render

    assert_select "form[action=?][method=?]", analyst_path(@analyst), "post" do

      assert_select "input#analyst_research[name=?]", "analyst[research]"

      assert_select "input#analyst_method[name=?]", "analyst[method]"

      assert_select "input#analyst_used[name=?]", "analyst[used]"
    end
  end
end
