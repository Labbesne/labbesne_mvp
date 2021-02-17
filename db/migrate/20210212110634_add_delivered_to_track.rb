class AddDeliveredToTrack < ActiveRecord::Migration[6.1]
  def change
    add_column :tracks, :delivered, :boolean, default: false
  end
end
