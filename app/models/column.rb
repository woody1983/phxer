# == Schema Information
#
# Table name: columns
#
#  id          :integer          not null, primary key
#  columb_name :string(255)
#  columb_type :string(255)
#  column_size :string(255)
#  column_desc :string(255)
#  table_id    :integer
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class Column < ActiveRecord::Base
  belongs_to :table
  attr_accessible :column_name, :column_type, :column_desc, :column_size
end
