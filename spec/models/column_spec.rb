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

require 'spec_helper'

describe Column do
  pending "add some examples to (or delete) #{__FILE__}"
end
