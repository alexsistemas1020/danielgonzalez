class Post < ActiveRecord::Base
  acts_as_taggable
  
  has_many :comments, :order => 'created_at ASC', :dependent => :destroy
  
end
