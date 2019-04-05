class DropTableNews < ActiveRecord::Migration[5.2]
  def change
    drop_table :news
  end
end
