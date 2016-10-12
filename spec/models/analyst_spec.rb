require 'rails_helper'

RSpec.describe Analyst, type: :model do
   
   it "is not valid without a research_method" do
  analyst = Analyst.new(research_method: nil)
  expect(research_method).to_not be_valid
end

 it "is not valid without a research_participants" do
  analyst = Analyst.new(research_participants: nil)
  expect(research_participants).to_not be_valid
end

 it "is not valid without a benefit_from_test" do
  analyst = Analyst.new(benefit_from_test: nil)
  expect(benefit_from_test).to_not be_valid
end

 it "is not valid without a context" do
  analyst = Analyst.new(context: nil)
  expect(context).to_not be_valid
end

 it "is not valid without a result" do
  analyst = Analyst.new(result: nil)
  expect(result).to_not be_valid
end

 it "is not valid without a se_methodology" do
  analyst = Analyst.new(se_methodology: nil)
  expect(se_methodology).to_not be_valid
end

 it "is not valid without a se_method" do
  analyst = Analyst.new(se_method: nil)
  expect(se_method).to_not be_valid
end

end
