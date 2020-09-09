module GroupsHelper
  def groups_form(group)
    code = ''
    if group.icon.attached?
      code << '<div class="w-100 text-center">'
      code << (image_tag url_for(group.icon), class: 'header_avatar-image mx-auto')
      code << '</div>'
      code.html_safe
    else
      '<div class="w-100 text-center"><span>This group does not have an icon yet.</span></div>'.html_safe
    end
  end

  def group_background(group)
    code = ''
    code << '<div class="circle-logo-group text-light" '
    if group.icon.attached?
      code << 'style="background: url( ' + url_for(group.icon) + ' )'
      code << '; background-size: cover;"></div>'
    else
      code << 'style="background: url(https://bulma.io/images/placeholders/128x128.png);'
      code << 'background-size: cover;"></div>'
    end
    code.html_safe
  end
end
