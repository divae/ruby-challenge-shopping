require 'rails_helper'

RSpec.describe Merchant, :type => :model do
    it "is valid with valid attributes" do
        expect(Merchant.new).to be_valid
    end
end