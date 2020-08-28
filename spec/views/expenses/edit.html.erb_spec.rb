require 'rails_helper'

RSpec.describe "expenses/edit", type: :view do
  before(:each) do
    @expense = assign(:expense, Expense.create!(
      user: nil,
      group: nil,
      name: "MyString",
      amount: "9.99"
    ))
  end

  it "renders the edit expense form" do
    render

    assert_select "form[action=?][method=?]", expense_path(@expense), "post" do

      assert_select "input[name=?]", "expense[user_id]"

      assert_select "input[name=?]", "expense[group_id]"

      assert_select "input[name=?]", "expense[name]"

      assert_select "input[name=?]", "expense[amount]"
    end
  end
end
