class AddSpreeUserToSpreeStockLocation < ActiveRecord::Migration[6.1]
  def change
    add_reference :spree_stock_locations, :spree_user, null: true, foreign_key: true
  end
end
