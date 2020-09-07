module ExpensesHelper
  def expense_icon(expense)
    if expense.group.icon.attached?
      image_tag url_for(expense.group.icon), class: 'w-80'
    else
      image_tag 'https://bulma.io/images/placeholders/128x128.png', class: 'w-80'
    end
  end

  def expense_group(expense)
    if expense.group
      expense_icon(expense)
    else
      image_tag 'https://bulma.io/images/placeholders/128x128.png', class: 'w-80'
    end
  end
end
