class AddCircleSourceToCircles < ActiveRecord::Migration
  def change
    add_column :circles, :circle_source, :integer
  end
end
