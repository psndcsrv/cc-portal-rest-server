class ClassDiyActivity < PortalObject
  set_table_name :portal_class_diy_activities
  set_primary_key :class_diy_activity_id
  
  belongs_to :course, :foreign_key => :class_id
end
