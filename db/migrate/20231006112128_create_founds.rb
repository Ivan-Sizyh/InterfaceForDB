class CreateFounds < ActiveRecord::Migration[7.0]
  def change
    create_table :founds do |t|
      t.references :library, null: false, foreign_key: true, index: true
      t.string :title, null: false
      t.integer :books, null: false, default: 0
      t.integer :magazines, null: false, default: 0
      t.integer :newspapers, null: false, default: 0
      t.integer :collections, null: false, default: 0
      t.integer :dissertations, null: false, default: 0
      t.integer :essays, null: false, default: 0

      t.timestamps
    end
  end
end
