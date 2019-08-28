module BlogsHelper
  def gravatar_helper user
    image_tag "https://wwww.gravatar.com/avatar/#{Digest::MD5.hexdigest(user.email)}", width: 60
  end
end
