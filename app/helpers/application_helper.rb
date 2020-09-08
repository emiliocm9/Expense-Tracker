module ApplicationHelper
  def notice_helper
    return unless notice.present?

    ('<div class="w-100 text-center text-uppercase"><p id="notice">' + notice + '</p></div>').html_safe
  end

  def form_error_user(user)
    return unless user.errors.any?

    code = ''
    code << '<div id="error_explanation"><h2>'
    code << pluralize(user.errors.count, 'error')
    code << ' prohibited this element from being saved:</h2>'
    list(code, user)
  end

  def list(code, user)
    code << '<ul>'
    user.errors.full_messages.each do |message|
      code << '<li>' + message + '</li>'
    end
    code << '</ul></div>'
    code.html_safe
  end
end
