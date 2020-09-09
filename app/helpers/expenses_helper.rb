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

  def expense_id(expense)
    code = ''
    return unless expense.group_id

    code << '<div class="total_big-container d-flex align-items-center pt-3 pb-3 bg-light justify-content-between">'
    code << '<div class="total_title-container"><p class="text-casual-bold text-size text-size-small">Group</p>'
    code << '</div><div class="total_title-container"><p class="text-casual-bold text-size-small">'
    code << expense.group.name
    code << '</p></div></div>'
    code.html_safe
  end
end
