class Unit < ActiveRecord::Base
  set_table_name :portal_units
  set_primary_key :unit_id
  
  has_many :activities, :foreign_key => :activity_unit
end
