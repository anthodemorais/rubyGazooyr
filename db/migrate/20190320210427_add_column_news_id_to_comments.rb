class AddColumnNewsIdToComments < ActiveRecord::Migration[5.2]
  def change
    add_reference :comments, :news, foreign_key: true
  end
end
