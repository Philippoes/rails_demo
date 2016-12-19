require "rails_helper"

RSpec.describe Comment, type: :model do
  describe "DB table" do
    it { is_expected.to have_db_column :id }
    it { is_expected.to have_db_column :content }
    it { is_expected.to have_db_column :author }
  end

  describe 'Validations' do
    it { is_expected.to validate_presence_of :content }
    it { is_expected.to validate_presence_of :author }
  end
end