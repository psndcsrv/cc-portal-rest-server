class Course < PortalObject
  set_table_name :portal_classes
  set_primary_key :class_id
  
  has_one :class_word, :foreign_key => :class_id
  belongs_to :teacher, :foreign_key => :class_teacher
  belongs_to :school, :foreign_key => :class_school
  
  has_many :class_activities, :foreign_key => :class_id

  has_many :class_students, :foreign_key => :class_id
  
  has_many :activities, :through => :class_activities
  has_many :class_diy_activities, :foreign_key => :class_id
  has_many :students, :through => :class_students
end
