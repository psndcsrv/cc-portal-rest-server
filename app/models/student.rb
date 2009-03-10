class Student < PortalObject
  set_table_name :portal_members
  set_primary_key :member_id
  
  has_many :class_students, :foreign_key => :member_id
  
  has_many :courses, :through => :class_students
  
  def teachers
    courses.collect{|c| c.teacher }.flatten.uniq   
  end
  
  # Filter all members by member_type
  def self.find(*args)
    if args.first == :all || args.first == :first
      saw_conditions = false
      args.each do |a|
        if a.kind_of?(Hash) && a[:conditions]
          saw_conditions = true
          if a[:conditions].kind_of?(Hash)
            a[:conditions][:member_type] = 'student'
          else
            a[:conditions] << " AND member_type = 'student'"
          end
        end
      end
      if ! saw_conditions
        a = {:conditions => {:member_type => 'student'}}
        args.push a
      end
    end
    super
  end
end
