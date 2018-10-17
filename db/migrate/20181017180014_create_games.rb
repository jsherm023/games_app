class CreateGames < ActiveRecord::Migration[5.2]
  def change
    create_table :games do |t|
      t.string :creator
      t.string :title
      t.string :description
      t.integer :price

      t.timestamps
    end
  end
end
