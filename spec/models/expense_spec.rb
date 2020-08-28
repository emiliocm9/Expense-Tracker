require 'rails_helper'

RSpec.describe Expense, type: :model do
  describe 'associations' do
    it { is_expected.to belong_to(:group) }
    it { is_expected.to belong_to(:user).class_name('User').with_foreign_key('user_id') }
  end
end
