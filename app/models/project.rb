class Project < ActiveRecord::Base
  has_attachment :storage => :file_system,
    :max_size => 2.megabytes,
    :content_type => :image,
    :path_prefix => 'public/projects'

  validates_as_attachment
  
  validates_presence_of :name, :description
  validates_format_of :contact_email, :with => /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\Z/i
  # validates_format_of :url, :with => /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\Z/i
  validates_length_of :name, :maximum => 100
  validates_length_of :description, :maximum => 10000
end
