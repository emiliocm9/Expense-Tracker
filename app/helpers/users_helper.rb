module UsersHelper
  def user_avatar(user)
    if user.avatar.attached?
      image_tag url_for(user.avatar), class: 'header_avatar-image'
    else
      image_tag 'https://bulma.io/images/placeholders/128x128.png', class: 'header_avatar-image'
    end
  end
end
