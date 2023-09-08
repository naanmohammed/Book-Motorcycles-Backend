require 'rails_helper'

RSpec.describe User, type: :model do
  before :each do
    @user = User.new(name: 'naan', email: 'naan@gmail.com', password: '123456',
                     password_confirmation: '123456')
  end

  context 'validations' do
    it 'is valid with valid attributes' do
      @user.save
      expect(@user).to be_valid
    end

    it 'should be invalid without a name' do
      @user.name = nil
      @user.save
      expect(@user).to_not be_valid
    end

    it 'should be invalid without an email' do
      @user.email = nil
      @user.save
      expect(@user).to_not be_valid
    end

    it 'should be invalid without a password' do
      @user.password = nil
      @user.save
      expect(@user).to_not be_valid
    end
  end

  context 'associations' do
    it 'has many reservations' do
      associate = described_class.reflect_on_association(:reservations)
      expect(associate.macro).to eq :has_many
    end
    it 'has many motorcycles' do
      associate = described_class.reflect_on_association(:motorcycles)
      expect(associate.macro).to eq :has_many
    end
  end
end
