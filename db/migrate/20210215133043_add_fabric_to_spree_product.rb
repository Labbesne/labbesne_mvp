class AddFabricToSpreeProduct < ActiveRecord::Migration[6.1]
  def change
    add_column :spree_products, :fabric, :string, default: ''
    add_column :spree_products, :sizes, :string, default: ''
  end
end
