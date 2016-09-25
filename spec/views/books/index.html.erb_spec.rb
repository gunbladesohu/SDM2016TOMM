require 'rails_helper'

RSpec.describe "books/index", type: :view do
  before(:each) do
    assign(:books, [
      Book.create!(
        :username => "Username",
        :paper_status => "Paper Status",
        :moderated_id => 2,
        :analysed_id => 3,
        :authors => "Authors",
        :title => "MyText",
        :journal => "MyText",
        :publish_year => 4,
        :publish_volume => 5,
        :publish_pages => 6,
        :publish_month => "Publish Month",
        :credibility_rate => "Credibility Rate",
        :research_metrix => "Research Metrix",
        :research_aim => "MyText",
        :research_method => "Research Method",
        :participant => "Participant"
      ),
      Book.create!(
        :username => "Username",
        :paper_status => "Paper Status",
        :moderated_id => 2,
        :analysed_id => 3,
        :authors => "Authors",
        :title => "MyText",
        :journal => "MyText",
        :publish_year => 4,
        :publish_volume => 5,
        :publish_pages => 6,
        :publish_month => "Publish Month",
        :credibility_rate => "Credibility Rate",
        :research_metrix => "Research Metrix",
        :research_aim => "MyText",
        :research_method => "Research Method",
        :participant => "Participant"
      )
    ])
  end

  it "renders a list of books" do
    render
    assert_select "tr>td", :text => "Username".to_s, :count => 2
    assert_select "tr>td", :text => "Paper Status".to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => 3.to_s, :count => 2
    assert_select "tr>td", :text => "Authors".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => 4.to_s, :count => 2
    assert_select "tr>td", :text => 5.to_s, :count => 2
    assert_select "tr>td", :text => 6.to_s, :count => 2
    assert_select "tr>td", :text => "Publish Month".to_s, :count => 2
    assert_select "tr>td", :text => "Credibility Rate".to_s, :count => 2
    assert_select "tr>td", :text => "Research Metrix".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "Research Method".to_s, :count => 2
    assert_select "tr>td", :text => "Participant".to_s, :count => 2
  end
end
