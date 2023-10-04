class AddTypeLibraryToTypes < ActiveRecord::Migration[7.0]
  def change
    add_column :types, :type_library, :string, null: false
  end
end
