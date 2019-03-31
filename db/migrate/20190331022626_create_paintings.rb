class CreatePaintings < ActiveRecord::Migration[5.2]
  def change
    create_table :paintings do |t|
      t.string :image
      t.string :title
      t.string :author
      t.string :date

      t.timestamps
    end
  end
end
