require "rails_helper"

RSpec.describe Comment, type: :model do
  describe "DB table" do
    it { is_expected.to have_db_column :id }
    it { is_expected.to have_db_column :content }
    it { is_expected.to have_db_column :author }
  end

  describe "Associations" do
    it { is_expected.to belong_to :article}
  end

  describe "Validations" do
    it { is_expected.to validate_presence_of :content }
    it { is_expected.to validate_presence_of :author }
    it { is_expected.to validate_presence_of :article }
  end

  # describe "Factory" do
  #   it "should have valid Factory" do
  #     expect(FactoryGirl.create(:comment)).to be_valid
  #   end
  # end
end