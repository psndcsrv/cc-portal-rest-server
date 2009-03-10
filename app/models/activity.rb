class Activity < PortalObject
  set_table_name :portal_activities
  set_primary_key :activity_id
  
  belongs_to :level, :foreign_key => :activity_level
  belongs_to :unit, :foreign_key => :activity_unit
  belongs_to :subject, :foreign_key => :activity_subject
  
  has_many :class_activities, :foreign_key => :activity_id
  
  has_many :courses, :through => :class_activities
end
