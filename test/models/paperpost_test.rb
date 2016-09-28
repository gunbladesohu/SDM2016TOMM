require 'test_helper'

class PaperpostTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
  describe Paperpost do
  it "has a articledetails"
  it "is invalid without a username"
  it "is invalid without a author"
  it "is invalid without a title"
  it "is invalid without a journalname"
  it "is invalid without a description"
  it "is invalid without a publishername"
  it "is invalid without a pages"
  it "is invalid without a volume"
  it "is invalid without a publish_date"
  it "is invalid without a submitted_date"
  it "is invalid without a status_type"
  it "returns a paperposts full details"
end
end
