class Student < ActiveRecord::Base
  set_table_name :portal_members
  set_primary_key :member_id
  
  has_many :class_students, :foreign_key => :member_id
  
  has_many :courses, :through => :class_students
end
