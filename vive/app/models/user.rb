class User < ActiveRecord::Base
	has_many :tutor_classes, :foreign_key=>"tutor_id", class_name: "Lesson"
	has_many :student_classes, :foreign_key=>"student_id", class_name: "Lesson"
end
