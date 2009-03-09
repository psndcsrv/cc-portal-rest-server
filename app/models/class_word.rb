class ClassWord < ActiveRecord::Base
  set_table_name :class_words
  set_primary_key :class_word_id
  
  belongs_to :course, :foreign_key => :class_id
end
