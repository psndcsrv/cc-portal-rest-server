class ClassActivity < ActiveRecord::Base
  set_table_name :portal_class_activities
  set_primary_key :class_activity_id
  
  belongs_to :course, :foreign_key => :class_id
  belongs_to :activity, :foreign_key => :activity_id
  
  # belongs_to :activity, :foreign_key => :original_activity_id, :as => :original_activity
end
