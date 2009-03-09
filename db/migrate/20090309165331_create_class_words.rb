class CreateClassWords < ActiveRecord::Migration
  def self.up
    create_table :class_words do |t|

      t.timestamps
    end
  end

  def self.down
    drop_table :class_words
  end
end
