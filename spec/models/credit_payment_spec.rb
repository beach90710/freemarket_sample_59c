require 'rails_helper'
describe CreditPayment do
  describe '#create' do
    it "is ninvalid without all column" do
      credit_payment = build(:credit_payment)
      expect(credit_payment).to be_valid
    end
  end
end