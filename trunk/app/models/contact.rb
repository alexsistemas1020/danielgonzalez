class Contact < Comment
  set_table_name 'comments'

  alias_attribute :message, :content

  attr_accessor :subject

end
