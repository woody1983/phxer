class CreateColumns < ActiveRecord::Migration
  def change
    create_table :columns do |t|
      t.string :column_name
      t.string :column_type
      t.string :column_size
      t.string :column_desc
      t.references :table

      t.timestamps
    end
    add_index :columns, :table_id
  end
end
