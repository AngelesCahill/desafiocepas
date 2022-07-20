class ChangeWinetastedsWinemakersTable < ActiveRecord::Migration[7.0]
  def change
    rename_table 'winemakers_winetasteds', 'winemaker_winetasteds'
    add_column :winemaker_winetasteds, :id, :primary_key
    add_column :winemaker_winetasteds, :available, :boolean, default: true
  end
end
