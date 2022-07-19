require 'rails_helper'

RSpec.describe Shopper, :type => :model do
  it "is valid with valid attributes" do
      expect(Shopper.new).to be_valid
  end
end