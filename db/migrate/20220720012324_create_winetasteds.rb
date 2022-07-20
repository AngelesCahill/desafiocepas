class CreateWinetasteds < ActiveRecord::Migration[7.0]
  def change
    create_table :winetasteds do |t|
      t.string :name
      t.string :strain
      t.string :percentage

      t.timestamps
    end
  end
end
