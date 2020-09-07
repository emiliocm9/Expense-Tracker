module GroupsHelper
  def groups_form(group)
    if group.icon.attached?
      ('<div class="w-100 text-center">' + (image_tag url_for(group.icon), class: 'header_avatar-image mx-auto') + '</div>').html_safe
    else
      '<div class="w-100 text-center"><span>This group does not have an icon yet.</span></div>'.html_safe
    end
  end
end
