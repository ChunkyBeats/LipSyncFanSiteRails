class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.column :video_url, :string
      t.column :title, :string
      t.column :description, :string

      t.timestamps
    end
  end
end
