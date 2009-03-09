class ClassStudent < ActiveRecord::Base
  set_table_name :portal_class_students
  set_primary_key :class_student_id
  
  belongs_to :student, :foreign_key => :member_id
  belongs_to :course, :foreign_key => :class_id
end
