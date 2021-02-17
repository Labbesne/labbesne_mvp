class AddBrandToProduct < ActiveRecord::Migration[6.1]
  def change
    add_column :spree_products, :brand, :string
  end
end
