require 'rails_helper'

RSpec.describe User, type: :model do
  describe 'associations' do
    it { should have_many(:groups) }
    it { should have_many(:expenses) }
    it { should have_one_attached(:avatar) }
  end

  describe 'validations' do
    it { should validate_presence_of(:name) }
    it { is_expected.to validate_uniqueness_of(:username) }
    it { should validate_presence_of(:username) }
  end
end
