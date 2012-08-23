module ApplicationHelper
  def avatar_url(current_user,num)
    gravatar_id = Digest::MD5.hexdigest(current_user.email.downcase)
    "http://gravatar.com/avatar/#{gravatar_id}.png?s=#{num}"
  end
end
