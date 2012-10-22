# == Schema Information
#
# Table name: circles
#
#  id            :integer          not null, primary key
#  database_id   :integer
#  table_id      :integer
#  circle_desc   :string(255)
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#  circle_source :integer
#

class Circle < ActiveRecord::Base
  #belongs_to :database
  before_save { |circle| circle.circle_desc = circle.circle_desc.strip }
  attr_accessible :circle_desc, :database_id, :table_id, :circle_source
end
