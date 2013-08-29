class CreateBlogcrs < ActiveRecord::Migration
  def change
    create_table :blogcrs do |t|
      t.string :title
      t.string :content
      t.string :link
      t.string :creater

      t.timestamps
    end
  end
end
