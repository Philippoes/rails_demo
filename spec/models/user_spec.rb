require 'rails_helper'

RSpec.describe User, type: :model do
  describe 'factory' do
    it 'is valid' do
      expect(FactoryGirl.create(:user)).to_be vaild
    end
  end
end

