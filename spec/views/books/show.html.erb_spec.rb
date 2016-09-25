require 'rails_helper'

RSpec.describe "books/show", type: :view do
  before(:each) do
    @book = assign(:book, Book.create!(
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
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Username/)
    expect(rendered).to match(/Paper Status/)
    expect(rendered).to match(/2/)
    expect(rendered).to match(/3/)
    expect(rendered).to match(/Authors/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/4/)
    expect(rendered).to match(/5/)
    expect(rendered).to match(/6/)
    expect(rendered).to match(/Publish Month/)
    expect(rendered).to match(/Credibility Rate/)
    expect(rendered).to match(/Research Metrix/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/Research Method/)
    expect(rendered).to match(/Participant/)
  end
end
