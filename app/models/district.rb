class District < ActiveRecord::Base
  set_table_name :portal_districts
  set_primary_key :district_id
  
  has_many :schools, :foreign_key => :school_district
end
