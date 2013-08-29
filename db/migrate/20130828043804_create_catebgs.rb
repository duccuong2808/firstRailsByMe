class CreateCatebgs < ActiveRecord::Migration
  def change
    create_table :catebgs do |t|
      t.string :namecatebg

      t.timestamps
    end
  end
end
