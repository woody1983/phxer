class CreateDatabases < ActiveRecord::Migration
  def change
    create_table :databases do |t|
      t.string :db_name
      t.string :db_project
      t.string :db_user
      t.string :db_pm
      t.string :db_desc

      t.timestamps
    end
  end
end
