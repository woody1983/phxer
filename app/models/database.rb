# == Schema Information
#
# Table name: databases
#
#  id         :integer          not null, primary key
#  db_name    :string(255)
#  db_project :string(255)
#  db_user    :string(255)
#  db_pm      :string(255)
#  db_desc    :string(255)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Database < ActiveRecord::Base
  attr_accessible :db_desc, :db_name, :db_pm, :db_project, :db_user
  has_many :tables
end
