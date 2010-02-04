class Project < ActiveRecord::Base
  # has_attachment :storage => :file_system,
  #   :max_size => 2.megabytes,
  #   :content_type => :image,
  #   :path_prefix => 'public/projects'

  # validates_as_attachment
  
  validates_presence_of :name, :description
  validates_format_of :contact_email,
    :with => /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\Z/i,
    :if => 'self.contact_email != "Contact Email..."'
  validates_format_of :url,
    :with => /(^$)|(^(http|https):\/\/[a-z0-9]+([\-\.]{1}[a-z0-9]+)*\.[a-z]{2,5}(([0-9]{1,5})?\/.*)?$)/ix,
    :if => 'self.url != "Project Website..."'
  validates_exclusion_of :name, :in => 'Project Name...'
  validates_exclusion_of :description, :in => 'Project Description...'
  validates_length_of :name, :maximum => 100
  validates_length_of :description, :maximum => 10000
end
