class Post < ActiveRecord::Base
  acts_as_taggable
  
  has_many :comments, :order => 'created_at ASC', :dependent => :destroy

  validates_presence_of :title, :body
  validates_length_of :body, :maximum => 10000
end
