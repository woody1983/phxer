class AddDetailsToColumns < ActiveRecord::Migration
  def change
    add_column :columns, :column_null, :string
    add_column :columns, :column_key, :string
    add_column :columns, :column_default, :string
  end
end
