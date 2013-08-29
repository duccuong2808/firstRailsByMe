class CreateSortbgs < ActiveRecord::Migration
  def change
    create_table :sortbgs do |t|
      t.string :namesortbg

      t.timestamps
    end
  end
end
