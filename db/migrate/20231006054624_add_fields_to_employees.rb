# frozen_string_literal: true

class AddFieldsToEmployees < ActiveRecord::Migration[7.0]
  def change
    add_column :employees, :first_name, :string, null: false
    add_column :employees, :last_name, :string, null: false
    add_column :employees, :position, :string, null: false
    add_column :employees, :birth_date, :date, null: false, default: -> { "date('now', '-18 years')" }
    add_column :employees, :start_work_date, :date, null: false, default: -> { "date('now')" }
    add_column :employees, :salary, :decimal, null: false, default: 0
    add_column :employees, :education, :string, null: false
  end
end
