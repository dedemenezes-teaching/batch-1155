class CreateRestaurants < ActiveRecord::Migration[7.0]
  def change
    create_table :restaurants do |t|
      t.string :name
      t.string :address

      t.timestamps # creates two columns: `created_at` and `updated_at`
    end
  end
end
