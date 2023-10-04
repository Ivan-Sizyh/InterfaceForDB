class CreateEmployees < ActiveRecord::Migration[7.0]
  def change
    create_table :employees do |t|
      t.references :library, null: false, foreign_key: true, index: true
      t.string :first_name, null: false
      t.string :last_name, null: false
      t.string :position, null: false
      t.date :birt_day, null: false
      t.date :start_work_date, null: false
      t.decimal :salary, null: false, default: 0
      t.string :education, null: false

      t.timestamps
    end
  end
end
