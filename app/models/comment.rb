class Comment < ActiveRecord::Base
  belongs_to :post, :counter_cache => true, :conditions => ['status = ?', 'approved']

  validates_presence_of :content, :author, :author_email
  validates_length_of :content, :maximum => 1000
  validates_format_of :author_email, :with => /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\Z/i
  # validates_format_of :author_url, :with => /(^$)|(^(http|https):\/\/[a-z0-9]+([\-\.]{1}[a-z0-9]+)*\.[a-z]{2,5}(([0-9]{1,5})?\/.*)?$)/ix
  validates_exclusion_of :author, :in => 'Your Name...'
  validates_exclusion_of :author_email, :in => 'Your Email...'
  validates_exclusion_of :content, :in => 'Your Message...'
  validates_inclusion_of :status, :in => %w(new approved spam)
end
