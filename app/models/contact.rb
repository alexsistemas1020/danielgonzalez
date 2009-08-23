class Contact < Comment
  set_table_name 'comments'

  alias_attribute :name, :author_name
  alias_attribute :email, :author_email
  alias_attribute :url, :author_url
  alias_attribute :message, :content
  
  attr_accessor :subject

end
