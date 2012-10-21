class CreateCircles < ActiveRecord::Migration
  def change
    create_table :circles do |t|
      t.integer :database_id
      t.integer :table_id
      t.string :circle_desc
      t.references :table

      t.timestamps
    end
    add_index :circles, :table_id
  end
end
