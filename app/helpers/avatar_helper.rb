# General view helpers
module AvatarHelper
  def gravatar_url(email, size)
    hash = Digest::MD5.hexdigest(email).downcase
    "https://gravatar.com/avatar/#{hash}.png?s=#{size}"
  end

  def avatar_for(user, size_type = :medium)
    size = { small: 16, medium: 32, big: 64 }[size_type]
    image_tag gravatar_url(user.email, size), alt: user, title: user
  end
end
