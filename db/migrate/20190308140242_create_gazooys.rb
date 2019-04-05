class CreateGazooys < ActiveRecord::Migration[5.2]
  def change
    create_table :gazooys do |t|
      t.text :text

      t.timestamps
    end
  end
end
