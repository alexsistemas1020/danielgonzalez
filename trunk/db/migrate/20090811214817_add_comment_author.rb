class AddCommentAuthor < ActiveRecord::Migration
  def self.up
    add_column :comments, :author, :string
    add_column :comments, :author_email, :string
  end

  def self.down
    remove_column :comments, :author
    remove_column :comments, :author_email
  end
end
