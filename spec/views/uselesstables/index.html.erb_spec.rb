require 'rails_helper'

RSpec.describe "uselesstables/index", type: :view do
  before(:each) do
    assign(:uselesstables, [
      Uselesstable.create!(
        :name => "Name"
      ),
      Uselesstable.create!(
        :name => "Name"
      )
    ])
  end

  it "renders a list of uselesstables" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
  end
end
