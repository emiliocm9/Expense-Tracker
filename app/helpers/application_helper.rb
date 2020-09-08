module ApplicationHelper
  def notice_helper
    return unless notice.present?

    ('<div class="w-100 text-center text-uppercase"><p id="notice">' + notice + '</p></div>').html_safe
  end
end
