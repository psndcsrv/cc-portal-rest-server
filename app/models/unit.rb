class Unit < PortalObject
  set_table_name :portal_units
  set_primary_key :unit_id
  
  belongs_to :project, :foreign_key => :unit_project
  
  has_many :activities, :foreign_key => :activity_unit
end
