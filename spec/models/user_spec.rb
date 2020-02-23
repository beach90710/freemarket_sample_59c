require 'rails_helper'
describe User do
  describe '#create' do
    it "is ninvalid without all column" do
      user = build(:user)
      expect(user).to be_valid
    end
  end
end