require 'rails_helper'

RSpec.describe "analysts/new", type: :view do
  before(:each) do
    assign(:analyst, Analyst.new(
      :research => "MyString",
      :method => "MyString",
      :used => "MyString"
    ))
  end

  it "renders new analyst form" do
    render

    assert_select "form[action=?][method=?]", analysts_path, "post" do

      assert_select "input#analyst_research[name=?]", "analyst[research]"

      assert_select "input#analyst_method[name=?]", "analyst[method]"

      assert_select "input#analyst_used[name=?]", "analyst[used]"
    end
  end
end
