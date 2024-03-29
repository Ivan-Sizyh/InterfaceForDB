class CreateLibraries < ActiveRecord::Migration[7.0]
  def change
    create_table :libraries do |t|
      t.references :type, null: false, foreign_key: true, index: true
      t.string :title, null: false
      t.string :address, null: false
      t.string :city, null: false

      t.timestamps
    end
  end
end
