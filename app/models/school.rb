class School < ActiveRecord::Base
  set_table_name :portal_schools
  set_primary_key :school_id
  
  belongs_to :district, :foreign_key => :district_id
  has_many :teachers, :foreign_key => :member_id
  has_many :students, :foreign_key => :member_id
  has_many :courses, :foreign_key => :class_school
end
