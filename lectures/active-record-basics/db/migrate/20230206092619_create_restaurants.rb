class CreateRestaurants < ActiveRecord::Migration[7.0]
  def change
    create_table :restaurants do |t|
      t.string :name
      t.string :address

      t.timestamps # will create two new columns `created_at` and `updated_at`
    end
  end
end
