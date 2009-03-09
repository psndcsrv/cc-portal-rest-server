class Teacher < ActiveRecord::Base
  set_table_name :portal_members
  set_primary_key :member_id
  
  has_many :courses, :foreign_key => :class_teacher
end
