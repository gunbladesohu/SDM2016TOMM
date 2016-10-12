require 'rails_helper'

RSpec.describe Paperpost, type: :model do

  
  it "is not valid without a title" do
  paperpost = Paperpost.new(title: nil)
  expect(paperpost).to_not be_valid
end
  
  it "is not valid without a username" do
  paperpost = Paperpost.new(username: nil)
  expect(paperpost).to_not be_valid
end
  
  it "is not valid without a author" do
  paperpost = Paperpost.new(author: nil)
  expect(paperpost).to_not be_valid
end
  
  it "is not valid without a journalname" do
  paperpost = Paperpost.new(journalname: nil)
  expect(paperpost).to_not be_valid
end

it "is not valid without a publishername" do
  paperpost = Paperpost.new(publishername: nil)
  expect(paperpost).to_not be_valid
end

it "is not valid without a description" do
  paperpost = Paperpost.new(description: nil)
  expect(paperpost).to_not be_valid
end

it "is not valid without a pages" do
  paperpost = Paperpost.new(pages: nil)
  expect(paperpost).to_not be_valid
end

it "is not valid without a volume" do
  paperpost = Paperpost.new(volume: nil)
  expect(paperpost).to_not be_valid
end

it "is not valid without a publish_date" do
  paperpost = Paperpost.new(publish_date: nil)
  expect(paperpost).to_not be_valid
end
  
  it "is not valid without a submitted_date" do
  paperpost = Paperpost.new(submitted_date: nil)
  expect(paperpost).to_not be_valid
end
  
end


