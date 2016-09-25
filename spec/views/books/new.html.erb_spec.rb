require 'rails_helper'

RSpec.describe "books/new", type: :view do
  before(:each) do
    assign(:book, Book.new(
      :username => "MyString",
      :paper_status => "MyString",
      :moderated_id => 1,
      :analysed_id => 1,
      :authors => "MyString",
      :title => "MyText",
      :journal => "MyText",
      :publish_year => 1,
      :publish_volume => 1,
      :publish_pages => 1,
      :publish_month => "MyString",
      :credibility_rate => "MyString",
      :research_metrix => "MyString",
      :research_aim => "MyText",
      :research_method => "MyString",
      :participant => "MyString"
    ))
  end

  it "renders new book form" do
    render

    assert_select "form[action=?][method=?]", books_path, "post" do

      assert_select "input#book_username[name=?]", "book[username]"

      assert_select "input#book_paper_status[name=?]", "book[paper_status]"

      assert_select "input#book_moderated_id[name=?]", "book[moderated_id]"

      assert_select "input#book_analysed_id[name=?]", "book[analysed_id]"

      assert_select "input#book_authors[name=?]", "book[authors]"

      assert_select "textarea#book_title[name=?]", "book[title]"

      assert_select "textarea#book_journal[name=?]", "book[journal]"

      assert_select "input#book_publish_year[name=?]", "book[publish_year]"

      assert_select "input#book_publish_volume[name=?]", "book[publish_volume]"

      assert_select "input#book_publish_pages[name=?]", "book[publish_pages]"

      assert_select "input#book_publish_month[name=?]", "book[publish_month]"

      assert_select "input#book_credibility_rate[name=?]", "book[credibility_rate]"

      assert_select "input#book_research_metrix[name=?]", "book[research_metrix]"

      assert_select "textarea#book_research_aim[name=?]", "book[research_aim]"

      assert_select "input#book_research_method[name=?]", "book[research_method]"

      assert_select "input#book_participant[name=?]", "book[participant]"
    end
  end
end
