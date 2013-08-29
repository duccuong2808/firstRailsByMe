class AddSortbgToBlogcrs < ActiveRecord::Migration
  def change
    add_column :blogcrs, :sortbgs_id, :string
  end
end
