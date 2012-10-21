class Table < ActiveRecord::Base
  belongs_to :database
  attr_accessible :table_desc, :table_name
end
