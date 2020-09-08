require 'rails_helper'

RSpec.describe Group, type: :feature do
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

  describe 'Group new' do
    it 'user creating a new group' do
      log_in
      user = User.find(1)
      user.groups.build(name: 'Food').save
      group = Group.find(1)
      click_link 'My Groups'
      expect(page).to have_content group.name
    end
  end
end
