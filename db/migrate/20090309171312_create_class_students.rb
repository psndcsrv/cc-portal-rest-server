class CreateClassStudents < ActiveRecord::Migration
  def self.up
    create_table :class_students do |t|

      t.timestamps
    end
  end

  def self.down
    drop_table :class_students
  end
end
