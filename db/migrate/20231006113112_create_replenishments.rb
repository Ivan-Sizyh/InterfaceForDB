class CreateReplenishments < ActiveRecord::Migration[7.0]
  def change
    create_table :replenishments do |t|
      t.references :library, null: false, foreign_key: true, index: true
      t.references :employee, null: false, foreign_key: true, index: true
      t.references :found, null: false, foreign_key: true, index: true
      t.date :data_receipt, null: false
      t.string :source_title, null: false
      t.date :data_replenishment, null: false
      t.string :publishing_house, null: false
      t.integer :instances, null: false, default: 0

      t.timestamps
    end
  end
end
