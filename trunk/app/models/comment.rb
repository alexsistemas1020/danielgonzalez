class Comment < ActiveRecord::Base
  belongs_to :post, :counter_cache => true

  validates_presence_of :content, :author, :author_email
  validates_length_of :content, :maximum => 1000
end
