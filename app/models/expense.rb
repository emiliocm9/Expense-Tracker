class Expense < ApplicationRecord
  validates :name, presence: true
  validates :amount, presence: true
  belongs_to :user, class_name: 'User', foreign_key: 'user_id'
  belongs_to :group, optional: true
end
