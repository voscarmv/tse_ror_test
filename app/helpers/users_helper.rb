module UsersHelper
  def user_info(user)
    render partial: 'user', locals: { user: user } unless current_user?(user)
  end

  def friend_request(user)
    render partial: 'friend', locals: { user: user } if current_user.friendship_created?(user) && !current_user?(user)
  end

  def current_user?(user)
    current_user == user
  end
end
