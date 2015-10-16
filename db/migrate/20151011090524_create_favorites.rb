class CreateFavorites < ActiveRecord::Migration
  def change
    create_table :favorites do |t|
      t.string :session_id
      t.string :item_id

      t.timestamps null: false
    end
  end
end
