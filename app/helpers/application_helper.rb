module ApplicationHelper

  def avatar_for(user)
    return user.picture unless user.picture.nil?
    asset_path('default_avatar.png')
  end

end
