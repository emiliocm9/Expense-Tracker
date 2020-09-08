require 'rails_helper'

RSpec.describe Expense, type: :feature do
  def log_in
    visit 'http://localhost:3000/users/new'
    fill_in 'Name', with: 'User'
    fill_in 'Username', with: 'User1'
    fill_in 'Password', with: '123456'
    fill_in 'Password confirmation', with: '123456'
    click_on(class: 'button')
    visit 'http://localhost:3000/sessions/new'
    fill_in 'Name', with: 'User'
    fill_in 'Password', with: '123456'
    click_on 'Log in'
  end

  describe 'Expense new' do
    it 'user creating a new expense' do
      log_in
      user = User.find(1)
      user.expenses.build(name: 'Milk', amount: 4.25).save
      expense = Expense.find(1)
      click_link 'My Expenses'
      expect(page).to have_content expense.name
      expect(page).to have_content expense.amount
    end
  end
end
