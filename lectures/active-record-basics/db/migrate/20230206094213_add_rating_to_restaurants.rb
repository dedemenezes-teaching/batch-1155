class AddRatingToRestaurants < ActiveRecord::Migration[7.0]
  def change
    # SYNTAX
    # add_column :table_name, :column_name, :column_type
    add_column :restaurants, :rating, :integer, default: 0
  end
end
