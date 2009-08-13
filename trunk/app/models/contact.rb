class Contact < ActiveRecord::Base
  set_table_name 'comments'

  alias_attribute :message, :content

  attr_accessor :subject

  validates_presence_of :message, :author, :author_email
  validates_length_of :message, :maximum => 1000
end
