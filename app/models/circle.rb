# == Schema Information
#
# Table name: circles
#
#  id          :integer          not null, primary key
#  database_id :integer
#  table_id    :integer
#  circle_desc :string(255)
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class Circle < ActiveRecord::Base
  belongs_to :table
  attr_accessible :circle_desc, :database_id, :table_id
end
