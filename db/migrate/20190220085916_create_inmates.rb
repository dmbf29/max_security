class CreateInmates < ActiveRecord::Migration[5.2]
  def change
    create_table :inmates do |t|
      t.string :name
      t.string :image_url
      t.string :crime
      t.references :prison, foreign_key: true

      t.timestamps
    end
  end
end
