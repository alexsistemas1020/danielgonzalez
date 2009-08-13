# Methods added to this helper will be available to all templates in the application.
module ApplicationHelper
  def link_and_join tags, sep
    tags.collect! { |tag| link_to tag, "/posts/tagged_with/#{tag}" }
    tags.join(sep)
  end
end
