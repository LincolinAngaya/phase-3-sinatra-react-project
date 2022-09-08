class CreateRestaraunts < ActiveRecord::Migration[6.1]
  def change
    create_table :restaraunts do |t|
      t.string :image_url
      t.string :name
      t.string :location
      t.integer :phone_number
      t.string :description
    end
  end
end