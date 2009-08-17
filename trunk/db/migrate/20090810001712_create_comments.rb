class CreateComments < ActiveRecord::Migration
  def self.up
    create_table :comments do |t|
      t.integer :post_id
      t.text :content
      t.string :author_name, :author_email, :author_url
      t.string :status, :default => 'new'
      t.timestamps
    end
    add_index :comments, :post_id
  end

  def self.down
    drop_table :comments
  end
end
