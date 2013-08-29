class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :title
      t.string :summ
      t.string :creater
      t.string :content

      t.timestamps
    end
  end
end
