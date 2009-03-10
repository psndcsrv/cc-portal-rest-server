class Level < PortalObject
  set_table_name :portal_levels
  set_primary_key :level_id
  
  has_many :activities, :foreign_key => :activity_level
end
