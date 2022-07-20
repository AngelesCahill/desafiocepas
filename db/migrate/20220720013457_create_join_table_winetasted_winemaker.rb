class CreateJoinTableWinetastedWinemaker < ActiveRecord::Migration[7.0]
  def change
    create_join_table :winetasteds, :winemakers do |t|
      t.index [:winetasted_id, :winemaker_id]
      t.index [:winemaker_id, :winetasted_id]
    end
  end
end
