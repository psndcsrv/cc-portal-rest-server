class Teacher < ActiveRecord::Base
  set_table_name :portal_members
  set_primary_key :member_id
  
  has_many :courses, :foreign_key => :class_teacher
  
  # Filter all members by member_type
  def self.find(*args)
    if args.first == :all || args.first == :first
      saw_conditions = false
      args.each do |a|
        if a.kind_of?(Hash) && a[:conditions]
          saw_conditions = true
          a[:conditions][:member_type] = ['teacher','admin','superuser']
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
