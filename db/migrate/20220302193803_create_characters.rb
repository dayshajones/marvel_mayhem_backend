class CreateCharacters < ActiveRecord::Migration[6.1]
  def change
    create_table :characters do |t|
      t.string :name
      t.string :description
      t.string:thumbnail
      t.integer :team_id
      t.timestamps
    end
  end
end
