class CreateProjects < ActiveRecord::Migration
  def self.up
    create_table :projects do |t|
      t.string :name, :contact_email, :url
      t.text :description
      
      # the following columns are required for attachment_fu
      t.column :content_type, :string, :limit => 100
      t.column :filename, :string, :limit => 255
      t.column :path, :string, :limit => 255
      t.column :width, :integer
      t.column :height, :integer
      t.column :size, :integer

      t.timestamps
    end
  end

  def self.down
    drop_table :projects
  end
end
