require 'rails_helper'
describe Address do
  describe '#create' do
    it "is ninvalid without all column" do
      address = build(:address)
      expect(address).to be_valid
    end
  end
end