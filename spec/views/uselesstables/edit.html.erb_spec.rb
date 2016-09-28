require 'rails_helper'

RSpec.describe "uselesstables/edit", type: :view do
  before(:each) do
    @uselesstable = assign(:uselesstable, Uselesstable.create!(
      :name => "MyString"
    ))
  end

  it "renders the edit uselesstable form" do
    render

    assert_select "form[action=?][method=?]", uselesstable_path(@uselesstable), "post" do

      assert_select "input#uselesstable_name[name=?]", "uselesstable[name]"
    end
  end
end
