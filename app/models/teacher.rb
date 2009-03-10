class Teacher < PortalObject
  set_table_name :portal_members
  set_primary_key :member_id
  
  has_many :courses, :foreign_key => :class_teacher
  
  def students
    courses.collect{|c| c.students}.flatten.uniq   
  end
  
  # Filter all members by member_type
  def self.find(*args)
    if args.first == :all || args.first == :first
      saw_conditions = false
      args.each do |a|
        if a.kind_of?(Hash) && a[:conditions]
          saw_conditions = true
          if a[:conditions].kind_of?(Hash)
            a[:conditions][:member_type] = ['teacher','admin','superuser']
          else
            a[:conditions] << " AND (member_type = 'teacher' OR member_type = 'admin' OR member_type = 'superuser')"
          end
        end
      end
      if ! saw_conditions
        a = {:conditions => {:member_type => ['teacher','admin','superuser']}}
        args.push a
      end
    end
    super
  end
end
