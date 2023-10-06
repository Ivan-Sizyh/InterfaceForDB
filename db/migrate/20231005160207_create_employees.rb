class CreateEmployees < ActiveRecord::Migration[7.0]
  def change
    create_table :employees do |t|
      t.references :library, null: false, foreign_key: { to_table: :libraries }, index: true

      t.timestamps
    end
  end
end
