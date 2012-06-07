module UsersHelper
  
  # Returns the Gravatar (gravatar.com) for a given user
  def gravatar_for(user)
    gravatar_id = Digest::MD5::hexdigest(user.email.downcase)
    gravatar_url = "https://secure.gravatar.com/avatar/#{gravatar_id}?s=60"
    image_tag(gravatar_url, alt: user.name, class: "gravatar")
  end
end
