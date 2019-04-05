class AddUserIdToGazooys < ActiveRecord::Migration[5.2]
  def change
    add_reference :gazooys, :user, foreign_key: true
  end
end
