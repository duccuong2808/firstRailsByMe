class AddCatebgToBlogcrs < ActiveRecord::Migration
  def change
    add_column :blogcrs, :catebgs_id, :string
  end
end
