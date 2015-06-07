require 'rails_helper'

RSpec.describe PhoneNumber, type: :model do
  let(:phone_number) {PhoneNumber.new(number: "1234567890")}

  it 'is valid' do
    expect(phone_number).to be_valid
  end

  it 'is invalid without a phone number' do
    phone_number.number = nil
    expect(phone_number).to_not be_valid
  end

end
