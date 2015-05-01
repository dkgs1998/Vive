class CreateLessons < ActiveRecord::Migration
  def change
    create_table :lessons do |t|
      t.integer :tutor_id
      t.integer :student_id
      t.timestamp :scheduled_to
      t.integer :length

      t.timestamps null: false
    end
  end
end
