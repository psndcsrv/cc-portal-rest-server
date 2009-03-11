class Project < PortalObject
  set_table_name :portal_projects
  set_primary_key :project_id
  
  has_many :units, :foreign_key => :unit_project
end
