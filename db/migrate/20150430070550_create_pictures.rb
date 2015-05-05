class CreatePictures < ActiveRecord::Migration
  def change
    create_table :pictures do |t|
      t.string :title
      t.string :cycle
      t.decimal :price, precision: 8, scale: 2 

      t.timestamps null: false
    end
  end
end
