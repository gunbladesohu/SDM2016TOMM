require 'rails_helper'

RSpec.describe "uselesstables/new", type: :view do
  before(:each) do
    assign(:uselesstable, Uselesstable.new(
      :name => "MyString"
    ))
  end

  it "renders new uselesstable form" do
    render

    assert_select "form[action=?][method=?]", uselesstables_path, "post" do

      assert_select "input#uselesstable_name[name=?]", "uselesstable[name]"
    end
  end
end
