require "spec_helper"

describe Pet do
  before(:each) do
    FactoryGirl.create(:pet)
  end

  it {should validate_presence_of(:name)}
  it {should validate_presence_of(:type)}
end
